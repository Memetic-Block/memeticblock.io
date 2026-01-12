<template>
  <div>
    <LandingHero />
    <DownArrow scrollTo="projects" />
    <ProjectsTable />
  </div>
</template>

<script setup lang="ts">
useHead({
  title: 'Memetic Block',
  link: [ { rel: 'canonical', href: 'https://memeticblock.com' } ]
})
</script>
