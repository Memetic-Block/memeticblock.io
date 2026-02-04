<template>
  <article class="case-studies-page" itemscope itemtype="https://schema.org/CollectionPage">
    <!-- Hero Section -->
    <header class="relative pt-16 md:pt-24 text-center">
      <div class="max-w-4xl mx-auto px-4">
        <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold mb-6 leading-tight" itemprop="name">
          Case <span class="text-primary">Studies</span>
        </h1>
        <p class="text-xl md:text-2xl text-gray-text mb-8 max-w-2xl mx-auto" itemprop="description">
          Real-world Web3 and DePIN projects we've built from the ground up. Explore our work and see how we deliver.
        </p>
      </div>
      <!-- Decorative gradient -->
      <div
        class="absolute inset-0 -z-10 bg-gradient-to-b from-primary/5 to-transparent pointer-events-none"
        aria-hidden="true"
      />
    </header>

    <!-- Case Studies Grid -->
    <section class="pb-16 md:pb-24" aria-labelledby="case-studies-heading">
      <div class="max-w-6xl mx-auto px-4">
        <h2 id="case-studies-heading" class="sr-only">Featured Case Studies</h2>

        <div class="space-y-6 md:space-y-8">
          <!-- Anyone Protocol Case Study Card -->
          <RouterLink
            to="/case-studies/anyone-protocol"
            class="group block p-6 md:p-8 border border-white/20 hover:border-primary/50 transition-colors duration-300 no-underline"
            itemprop="hasPart"
            itemscope
            itemtype="https://schema.org/Article"
          >
            <div class="grid md:grid-cols-4 gap-6 items-start">
              <div class="md:col-span-1">
                <span
                  class="inline-block px-3 py-1 text-xs font-medium bg-primary/10 text-primary border border-primary/30 mb-4"
                >
                  DePIN
                </span>
                <h3
                  class="text-xl md:text-2xl font-bold mb-2 group-hover:text-primary transition-colors"
                  itemprop="headline"
                >
                  From Zero to Anyone
                </h3>
                <p class="text-sm text-gray-text mb-3" itemprop="alternativeHeadline">Anyone Protocol</p>
                <p class="text-xs text-gray-text mt-2">Published Feb 4, 2026</p>
              </div>
              <div class="md:col-span-3">
                <p class="text-gray-text mb-6 leading-relaxed" itemprop="description">
                  How Memetic Block helped Anyone Protocol build an entire DePIN privacy network that took
                  them from an ERC-20 token to 22,000+ registered relays, Multi-chain smart contracts, backend
                  microservices, operator dashboard, and full infrastructure operations.
                </p>
                <div class="grid grid-cols-2 sm:grid-cols-4 gap-4">
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-2xl font-bold text-primary">7,600+</p>
                    <p class="text-xs text-gray-text">Active Relays</p>
                  </div>
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-2xl font-bold text-primary">22,000+</p>
                    <p class="text-xs text-gray-text">Relays Registered</p>
                  </div>
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-2xl font-bold text-primary">69+</p>
                    <p class="text-xs text-gray-text">Gbps Bandwidth</p>
                  </div>
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-2xl font-bold text-primary">8,000,000+</p>
                    <p class="text-xs text-gray-text">$ANYONE Tokens Staked</p>
                  </div>
                </div>
                <div class="mt-6 flex items-center gap-2 text-primary text-sm font-medium">
                  <span>Read full case study</span>
                  <span class="group-hover:translate-x-1 transition-transform">→</span>
                </div>
              </div>
            </div>
          </RouterLink>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 md:py-24 bg-surface/30" aria-labelledby="cta-heading">
      <div class="max-w-4xl mx-auto px-4 text-center">
        <h2 id="cta-heading" class="text-3xl md:text-4xl font-bold mb-6">Want Results Like These?</h2>
        <p class="text-xl text-gray-text mb-8 max-w-2xl mx-auto">
          We build production-grade Web3 infrastructure. Let's discuss how we can help your project.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <RouterLink class="btn btn-primary" to="/contact"> Get a Free Consultation </RouterLink>
          <RouterLink class="btn" to="/about"> Learn About Us </RouterLink>
        </div>
      </div>
    </section>
  </article>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'

useHead({
  title: 'Case Studies - Web3 & DePIN Development Projects',
  link: [{ rel: 'canonical', href: 'https://memeticblock.io/case-studies' }],
  meta: [
    {
      name: 'description',
      content:
        "Explore Memetic Block's Web3 and DePIN case studies. See how we build production blockchain " +
        'infrastructure—from zero to thousands of nodes. Real projects, real results.',
    },
    { property: 'og:title', content: 'Case Studies | Web3 & DePIN Development | Memetic Block' },
    {
      property: 'og:description',
      content:
        'Explore our Web3 and DePIN case studies. Real projects with measurable results—22,000+ relays, ' +
        '56 repositories, production networks built from scratch.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.io/case-studies' },
    { name: 'twitter:title', content: 'Case Studies | Web3 & DePIN Development | Memetic Block' },
    {
      name: 'twitter:description',
      content:
        'Explore our Web3 and DePIN case studies. Real projects with measurable results—production ' +
        'networks built from scratch.',
    },
    {
      name: 'keywords',
      content:
        'Web3 case studies, DePIN development case studies, blockchain development portfolio, ' +
        'decentralized infrastructure projects, Web3 agency portfolio, blockchain project examples',
    },
    { name: 'robots', content: 'index, follow' },
    { property: 'og:locale', content: 'en_US' },
  ],
  script: [
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'CollectionPage',
        name: 'Case Studies',
        description: 'Web3 and DePIN development case studies by Memetic Block',
        url: 'https://memeticblock.io/case-studies',
        mainEntity: {
          '@type': 'ItemList',
          itemListElement: [
            {
              '@type': 'ListItem',
              position: 1,
              name: 'Anyone Protocol Case Study',
              url: 'https://memeticblock.io/case-studies/anyone-protocol',
            },
          ],
        },
        publisher: {
          '@type': 'Organization',
          name: 'Memetic Block',
          url: 'https://memeticblock.io',
        },
      }),
    },
  ],
})
</script>
