<template>
  <div>
    <LandingHero />
    <DownArrow scroll-to="projects" />
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
  link: [{ rel: 'canonical', href: 'https://memeticblock.com' }],
  meta: [
    {
      name: 'description',
      content:
        'Memetic Block is a software guild combining senior engineers with agentic coding teams under ' +
        'human-in-the-loop oversight. High-quality production software — distributed systems, web applications, SaaS platforms, and B2B products.',
    },
    { property: 'og:title', content: 'Memetic Block | Software Guild — Senior Engineers + Agentic Teams' },
    {
      property: 'og:description',
      content:
        'Senior engineers + agentic coding teams delivering production-grade software — from complex distributed systems ' +
        'and DePIN networks to web applications, SaaS platforms, and B2B products.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.com' },
    { property: 'og:image', content: 'https://memeticblock.com/logo/memetic-block/logo.svg' },
    { name: 'twitter:title', content: 'Memetic Block | Software Guild — Senior Engineers + Agentic Teams' },
    {
      name: 'twitter:description',
      content:
        'Senior engineers + agentic coding teams. Production-grade software across distributed systems, web apps, SaaS, and B2B products.',
    },
    { name: 'twitter:image', content: 'https://memeticblock.com/logo/memetic-block/logo.svg' },
    {
      name: 'keywords',
      content:
        'software guild, agentic coding, human-in-the-loop, distributed systems, DePIN, Web3, blockchain development, ' +
        'enterprise software, decentralized infrastructure, smart contracts',
    },
    { name: 'robots', content: 'index, follow' },
  ],
  script: [
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'Organization',
        name: 'Memetic Block',
        url: 'https://memeticblock.com',
        logo: 'https://memeticblock.com/logo/memetic-block/logo.svg',
        description:
          'Software guild combining senior engineers with agentic coding teams under human-in-the-loop oversight ' +
          'to deliver enterprise-grade distributed systems, DePIN networks, and Web3 infrastructure.',
        email: 'build@memeticblock.com',
        sameAs: ['https://x.com/memeticblock', 'https://github.com/memetic-block'],
        knowsAbout: [
          'Distributed Systems',
          'Agentic Software Development',
          'DePIN Infrastructure',
          'Blockchain Development',
          'Smart Contracts',
          'Web3',
          'Decentralized Applications',
          'Arweave',
          'Ethereum',
        ],
      }),
    },
  ],
})
</script>
