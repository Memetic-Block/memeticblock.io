<template>
  <div>
    <LandingHero />
    <DownArrow scrollTo="projects" />
    <ProjectsTable />
  </div>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'
import LandingHero from '@/components/LandingHero.vue'
import DownArrow from '@/components/DownArrow.vue'
import ProjectsTable from '@/components/ProjectsTable.vue'

useHead({
  title: 'Memetic Block',
  link: [{ rel: 'canonical', href: 'https://memeticblock.com' }]
})
</script>
