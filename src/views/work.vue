<template>
  <div>
    <!-- Page header -->
    <header class="pt-16 pb-2">
      <span class="eyebrow text-primary">Selected work</span>
      <h1 class="text-4xl md:text-5xl font-bold tracking-tight mt-4">Work</h1>
      <div class="h-1 w-16 bg-primary mt-5" />
      <p class="text-lg md:text-xl text-gray-text leading-relaxed mt-6 max-w-[62ch]">
        Production systems we architected, shipped, and still run today. We build it, then we stay to operate it.
      </p>
    </header>

    <!-- Featured work -->
    <section class="pt-12">
      <div class="grid gap-7">
        <FeaturedWorkCard v-for="(c, i) in FEATURED" :key="c.id" :project="c" :flip="i % 2 === 1" large />
      </div>
      <div class="mt-8 text-center">
        <RouterLink to="/case-studies" class="text-sm text-white underline hover:text-primary transition-colors">
          Read all case studies →
        </RouterLink>
      </div>
    </section>

    <!-- The Lab -->
    <LabSection />

    <!-- CTA -->
    <section class="pt-2">
      <div class="border border-white/20 p-8 md:p-12 text-center">
        <h2 class="text-2xl md:text-3xl font-bold tracking-tight mb-3.5">Want a system like these built and run?</h2>
        <p class="text-[15px] text-gray-text leading-relaxed mx-auto mb-7 max-w-[52ch]">
          The same team that built and operates Anyone Protocol is open to new engagements.
        </p>
        <RouterLink class="btn btn-primary text-lg px-8 py-4" to="/contact">Book a Scoping Call →</RouterLink>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'
import FeaturedWorkCard from '@/components/FeaturedWorkCard.vue'
import LabSection from '@/components/LabSection.vue'
import { FEATURED } from '@/data/portfolio'

useHead({
  title: 'Work - Production Systems We Built & Operate',
  link: [{ rel: 'canonical', href: 'https://memeticblock.com/work' }],
  meta: [
    {
      name: 'description',
      content:
        'Production systems Memetic Block architected, shipped, and still run today — Anyone Protocol and our ' +
        'bare-metal private cloud, plus the Lab where we sharpen the craft.',
    },
    { property: 'og:title', content: 'Work | Memetic Block' },
    {
      property: 'og:description',
      content: 'Production systems we built from zero and operate on retainer. Real projects, real results.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.com/work' },
  ],
  script: [
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'CollectionPage',
        name: 'Work',
        description: 'Production systems built and operated by Memetic Block',
        url: 'https://memeticblock.com/work',
        mainEntity: {
          '@type': 'ItemList',
          itemListElement: [
            {
              '@type': 'ListItem',
              position: 1,
              name: 'Anyone Protocol Case Study',
              url: 'https://memeticblock.com/case-studies/anyone-protocol',
            },
            {
              '@type': 'ListItem',
              position: 2,
              name: 'Beyond the Cloud: Bare-Metal Private Cloud',
              url: 'https://memeticblock.com/case-studies/bare-metal-private-cloud',
            },
          ],
        },
        publisher: {
          '@type': 'Organization',
          name: 'Memetic Block',
          url: 'https://memeticblock.com',
        },
      }),
    },
  ],
})
</script>
