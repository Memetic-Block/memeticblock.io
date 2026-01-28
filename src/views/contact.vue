<template>
  <div class="py-8">
    <section class="text-center mb-12">
      <h1 class="text-3xl md:text-4xl font-bold mb-4">Contact Us</h1>
      <p class="text-gray-text mb-8">Ready to start your project? Get in touch with us.</p>
    </section>
    
    <section class="max-w-2xl mx-auto">
      <!-- Success Message -->
      <div v-if="isSuccess" class="text-center py-12">
        <div class="text-success text-5xl mb-4">✓</div>
        <h2 class="text-2xl font-bold mb-4">Thank You!</h2>
        <p class="text-gray-text">
          Your message has been sent successfully. We'll get back to you soon.
        </p>
      </div>

      <!-- Contact Form -->
      <form v-else @submit.prevent="submitForm" class="space-y-6">
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

        <div class="text-center">
          <button
            type="submit"
            :disabled="isSubmitting"
            class="btn cursor-pointer bg-surface hover:bg-surface/80 px-8 py-3 disabled:opacity-50 disabled:cursor-not-allowed"
          >
            {{ isSubmitting ? 'Sending...' : 'Send Message' }}
          </button>
        </div>
      </form>
    </section>
    
    <section class="text-center mt-12 pt-8 border-t border-white/20">
      <p class="mb-4">Or reach out directly:</p>
      <p class="text-lg">
        <a class="underline hover:text-primary transition-colors" href="mailto:build@memeticblock.com">
          build@memeticblock.com
        </a>
      </p>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref, reactive } from 'vue'
import { useHead } from '@unhead/vue'

const formApiUrl = import.meta.env.VITE_FORM_API_URL as string || 'https://forms.hel.memeticblock.net'

const formData = reactive({
  name: '',
  email: '',
  subject: '',
  message: ''
})

const isSubmitting = ref(false)
const isSuccess = ref(false)
const hasError = ref(false)

async function submitForm() {
  hasError.value = false
  isSubmitting.value = true

  try {
    const response = await fetch(`${formApiUrl}/form`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(formData)
    })

    if (!response.ok) {
      throw new Error('Form submission failed')
    }

    isSuccess.value = true
  } catch (error) {
    hasError.value = true
  } finally {
    isSubmitting.value = false
  }
}

useHead({
  title: 'Contact Us',
  meta: [
    { property: 'og:title', content: 'Contact Us | Memetic Block' },
    {
      name: 'description',
      content: 'Contact Memetic Block for custom blockchain and decentralized software solutions.'
    },
    { name: 'twitter:title', content: 'Contact Us | Memetic Block' },
    {
      name: 'twitter:description',
      content: 'Contact Memetic Block for custom blockchain and decentralized software solutions.'
    },
    { property: 'og:type', content: 'website' },
    { name: 'keywords', content: 'blockchain development, smart contract development, decentralized applications, Web3, DePIN' }
  ]
})
</script>
