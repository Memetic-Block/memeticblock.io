<template>
  <div class="app min-h-screen flex flex-col bg-background text-white">
    <SiteHeader />
    <main class="container-page py-8 flex-grow">
      <RouterView />
    </main>
    <SiteFooter />
  </div>
</template>

<script setup lang="ts">
import SiteHeader from './components/SiteHeader.vue'
import SiteFooter from './components/SiteFooter.vue'
import { useHead } from '@unhead/vue'

useHead({
  titleTemplate: (title) => (title ? `${title} | Memetic Block` : 'Memetic Block'),
  meta: [
    {
      name: 'description',
      content: 'Memetic Block - A Software Guild focused on building distributed systems of value.',
    },
    { property: 'og:site_name', content: 'Memetic Block' },
    { property: 'og:type', content: 'website' },
    { name: 'twitter:card', content: 'summary_large_image' },
  ],
  link: [{ rel: 'canonical', href: 'https://memeticblock.com' }],
})
</script>
