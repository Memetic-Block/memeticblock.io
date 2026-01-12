<template>
  <header class="w-full py-4 px-4 md:px-8">
    <nav class="max-w-6xl mx-auto flex items-center justify-between">
      <!-- Logo/Brand -->
      <NuxtLink href="/" class="flex items-center gap-3 no-underline hover:text-primary">
        <MemeticBlockLogo class="w-7 h-7" />
        <span class="text-lg mt-0">
          <span class="font-bold">MEMETIC</span> <span class="font-normal">BLOCK</span>
        </span>
      </NuxtLink>

      <!-- Desktop Navigation -->
      <ul class="hidden md:flex items-center gap-8 list-none m-0 p-0">
        <li>
          <NuxtLink href="/" class="no-underline hover:text-primary transition-colors">
            Home
          </NuxtLink>
        </li>
        <li>
          <NuxtLink href="/about" class="no-underline hover:text-primary transition-colors">
            About
          </NuxtLink>
        </li>
        <li>
          <NuxtLink href="/contact" class="no-underline hover:text-primary transition-colors">
            Contact Us
          </NuxtLink>
        </li>
      </ul>

      <!-- Mobile Hamburger Button -->
      <button
        class="md:hidden p-2 text-white"
        @click="mobileMenuOpen = !mobileMenuOpen"
        aria-label="Toggle menu"
      >
        <svg v-if="!mobileMenuOpen" class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
        </svg>
        <svg v-else class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
    </nav>

    <!-- Mobile Menu Drawer -->
    <Transition name="slide">
      <div v-if="mobileMenuOpen" class="md:hidden mt-4 pb-4 border-t border-white/20">
        <ul class="flex flex-col gap-4 list-none m-0 p-0 pt-4">
          <li>
            <NuxtLink
              href="/"
              class="block no-underline hover:text-primary transition-colors"
              @click="mobileMenuOpen = false"
            >
              Home
            </NuxtLink>
          </li>
          <li>
            <NuxtLink
              href="/about"
              class="block no-underline hover:text-primary transition-colors"
              @click="mobileMenuOpen = false"
            >
              About
            </NuxtLink>
          </li>
          <li>
            <NuxtLink
              href="/contact"
              class="block no-underline hover:text-primary transition-colors"
              @click="mobileMenuOpen = false"
            >
              Contact Us
            </NuxtLink>
          </li>
        </ul>
      </div>
    </Transition>
  </header>
</template>

<script setup lang="ts">
const mobileMenuOpen = ref(false)
</script>

<style scoped>
.slide-enter-active,
.slide-leave-active {
  transition: all 0.3s ease;
}

.slide-enter-from,
.slide-leave-to {
  opacity: 0;
  transform: translateY(-10px);
}
</style>
