<template>
  <div class="py-8">
    <section class="text-center mb-6">
      <span class="eyebrow text-primary">Contact</span>
      <h1 class="text-3xl md:text-4xl font-bold tracking-tight mt-3 mb-4">Book a Scoping Call</h1>
      <div class="h-1 w-16 bg-primary mx-auto mb-5" />
      <p class="text-gray-text mb-8 max-w-[58ch] mx-auto leading-relaxed">
        Tell us what you're building. We'll give you a precise quote within 48 hours — no discovery theater, no surprise
        invoices.
      </p>
    </section>

    <section v-if="showContactForm" class="max-w-2xl mx-auto">
      <!-- Success Message -->
      <div v-if="isSuccess" class="text-center py-12">
        <div class="text-success text-5xl mb-4">✓</div>
        <h2 class="text-2xl font-bold mb-4">Thank You!</h2>
        <p class="text-gray-text">Your message has been sent successfully. We'll get back to you soon.</p>
      </div>

      <!-- Contact Form -->
      <form v-else class="space-y-6" @submit.prevent="submitForm">
        <div>
          <div class="flex justify-between items-center mb-2">
            <label for="name" class="block text-sm font-medium">Name <span class="text-error">*</span></label>
            <span class="text-xs text-gray-text">{{ formData.name.length }}/100</span>
          </div>
          <input
            id="name"
            v-model="formData.name"
            type="text"
            required
            maxlength="100"
            :disabled="isSubmitting"
            class="w-full px-4 py-3 bg-surface border border-white/20 rounded focus:outline-none focus:border-blue-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
            placeholder="Your name"
          />
        </div>

        <div>
          <label for="email" class="block text-sm font-medium mb-2">Email <span class="text-error">*</span></label>
          <input
            id="email"
            v-model="formData.email"
            type="email"
            required
            :disabled="isSubmitting"
            class="w-full px-4 py-3 bg-surface border border-white/20 rounded focus:outline-none focus:border-blue-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
            placeholder="your@email.com"
          />
        </div>

        <div>
          <div class="flex justify-between items-center mb-2">
            <label for="subject" class="block text-sm font-medium">Subject <span class="text-error">*</span></label>
            <span class="text-xs text-gray-text">{{ formData.subject.length }}/200</span>
          </div>
          <input
            id="subject"
            v-model="formData.subject"
            type="text"
            required
            maxlength="200"
            :disabled="isSubmitting"
            class="w-full px-4 py-3 bg-surface border border-white/20 rounded focus:outline-none focus:border-blue-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
            placeholder="What's this about?"
          />
        </div>

        <div>
          <div class="flex justify-between items-center mb-2">
            <label for="message" class="block text-sm font-medium">Message <span class="text-error">*</span></label>
            <span class="text-xs text-gray-text">{{ formData.message.length }}/5000</span>
          </div>
          <textarea
            id="message"
            v-model="formData.message"
            required
            maxlength="5000"
            rows="6"
            :disabled="isSubmitting"
            class="w-full px-4 py-3 bg-surface border border-white/20 rounded focus:outline-none focus:border-blue-500 transition-colors resize-y disabled:opacity-50 disabled:cursor-not-allowed"
            placeholder="Tell us about your project..."
          ></textarea>
        </div>

        <!-- Error Message -->
        <p v-if="hasError" class="text-error text-center">
          Error submitting form. Please try again or contact us directly.
        </p>

        <!-- Turnstile Error -->
        <p v-if="turnstileError" class="text-error text-center">
          Failed to load verification. Please refresh the page.
        </p>

        <div class="text-center">
          <!-- Turnstile Captcha (shown when no valid token) -->
          <div v-if="!turnstileToken" id="turnstile-container" class="flex justify-center" />

          <!-- Submit Button (shown when token is valid) -->
          <button
            v-else
            type="submit"
            :disabled="isSubmitting"
            class="btn cursor-pointer bg-surface hover:bg-surface/80 px-8 py-3 disabled:opacity-50 disabled:cursor-not-allowed"
          >
            {{ isSubmitting ? 'Sending...' : 'Send Message' }}
          </button>
        </div>
      </form>
    </section>

    <section :class="['text-center', showContactForm ? 'mt-12 pt-8 border-t border-white/20' : 'mt-8']">
      <p v-if="showContactForm" class="mb-4">Or reach out directly:</p>
      <p class="text-lg">
        <a class="underline hover:text-primary transition-colors" href="mailto:build@memeticblock.com">
          build@memeticblock.com
        </a>
      </p>
      <div class="mt-8 flex items-center justify-center gap-2.5 text-[13px] text-gray-text">
        <span class="w-2 h-2 rounded-full bg-success animate-mbpulse" />
        <span>Currently open to new engagements — we keep the roster small on purpose.</span>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref, reactive, onMounted, onUnmounted, nextTick } from 'vue'
import { useHead } from '@unhead/vue'

// Turnstile type declarations
declare global {
  interface Window {
    turnstile: {
      render: (container: string | HTMLElement, options: TurnstileOptions) => string
      reset: (widgetId: string) => void
      remove: (widgetId: string) => void
      getResponse: (widgetId: string) => string | undefined
      isExpired: (widgetId: string) => boolean
    }
  }
}

interface TurnstileOptions {
  sitekey: string
  callback?: (token: string) => void
  'error-callback'?: () => void
  'expired-callback'?: () => void
  theme?: 'light' | 'dark' | 'auto'
  size?: 'normal' | 'flexible' | 'compact'
}

const formApiUrl = import.meta.env.VITE_FORM_API_URL || 'https://forms.hel.memeticblock.net'
const turnstileSiteKey = import.meta.env.VITE_TURNSTILE_SITEKEY as string
const showContactForm = import.meta.env.VITE_SHOW_CONTACT_FORM === 'true'

const formData = reactive({
  name: '',
  email: '',
  subject: '',
  message: '',
})

const isSubmitting = ref(false)
const isSuccess = ref(false)
const hasError = ref(false)

// Turnstile state
const turnstileToken = ref<string | null>(null)
const turnstileWidgetId = ref<string | null>(null)
const turnstileError = ref(false)

// Load Turnstile script dynamically
function loadTurnstileScript(): Promise<void> {
  return new Promise((resolve, reject) => {
    if (window.turnstile) {
      resolve()
      return
    }

    const script = document.createElement('script')
    script.src = 'https://challenges.cloudflare.com/turnstile/v0/api.js?render=explicit'
    script.async = true
    script.onload = () => resolve()
    script.onerror = () => reject(new Error('Failed to load Turnstile'))
    document.head.appendChild(script)
  })
}

// Render Turnstile widget
function renderTurnstile() {
  if (!window.turnstile) return

  const container = document.getElementById('turnstile-container')
  if (!container) return

  turnstileWidgetId.value = window.turnstile.render(container, {
    sitekey: turnstileSiteKey,
    callback: (token: string) => {
      turnstileToken.value = token
      turnstileError.value = false
    },
    'error-callback': () => {
      turnstileToken.value = null
      turnstileError.value = true
    },
    'expired-callback': () => {
      turnstileToken.value = null
      if (turnstileWidgetId.value) {
        window.turnstile.reset(turnstileWidgetId.value)
      }
    },
    theme: 'dark',
  })
}

// Reset Turnstile widget
function resetTurnstile() {
  turnstileToken.value = null
  if (turnstileWidgetId.value && window.turnstile) {
    window.turnstile.reset(turnstileWidgetId.value)
  }
}

onMounted(async () => {
  if (!showContactForm) return

  try {
    await loadTurnstileScript()
    // Wait for Vue to render the container element before initializing Turnstile
    await nextTick()
    renderTurnstile()
  } catch (error) {
    console.error('Turnstile failed to load:', error)
    turnstileError.value = true
  }
})

onUnmounted(() => {
  if (turnstileWidgetId.value && window.turnstile) {
    window.turnstile.remove(turnstileWidgetId.value)
  }
})

async function submitForm() {
  hasError.value = false
  isSubmitting.value = true

  try {
    const response = await fetch(`${formApiUrl}/form`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        ...formData,
        turnstileToken: turnstileToken.value,
      }),
    })

    if (!response.ok) {
      throw new Error('Form submission failed')
    }

    isSuccess.value = true
  } catch (error) {
    hasError.value = true
    resetTurnstile()
  } finally {
    isSubmitting.value = false
  }
}

useHead({
  title: 'Book a Scoping Call',
  link: [{ rel: 'canonical', href: 'https://memeticblock.com/contact' }],
  meta: [
    { property: 'og:title', content: 'Book a Scoping Call | Memetic Block' },
    {
      name: 'description',
      content:
        "Tell us what you're building. We'll give you a precise quote within 48 hours — engineering retainers, " +
        'production readiness audits, and scoped builds for distributed systems and production AI.',
    },
    { name: 'twitter:title', content: 'Book a Scoping Call | Memetic Block' },
    {
      name: 'twitter:description',
      content: 'Senior engineers for distributed systems and production AI. Precise quote within 48 hours.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.com/contact' },
    {
      name: 'keywords',
      content:
        'engineering retainer, production readiness audit, scoped builds, distributed systems, production AI, ' +
        'fractional CTO, DePIN, smart contract development',
    },
  ],
})
</script>
