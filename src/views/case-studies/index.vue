<template>
  <article class="case-studies-page" itemscope itemtype="https://schema.org/CollectionPage">
    <!-- Hero Section -->
    <header class="pt-16 pb-2">
      <span class="eyebrow text-primary">Case Studies</span>
      <h1 class="text-4xl md:text-5xl font-bold tracking-tight mt-4" itemprop="name">
        Case Studies
      </h1>
      <div class="h-1 w-16 bg-primary mt-5" />
      <p class="text-lg md:text-xl text-gray-text leading-relaxed mt-6 max-w-[62ch]" itemprop="description">
        The full record — client systems and internal R&amp;D alike. Written up in depth: what we built, how we run
        it, and what it took.
      </p>
    </header>

    <!-- Case Studies Grid -->
    <section class="pt-12" aria-labelledby="case-studies-heading">
      <h2 id="case-studies-heading" class="sr-only">Featured Case Studies</h2>

      <div class="space-y-6 md:space-y-8">
          <!-- Bare Metal Private Cloud Case Study Card -->
          <RouterLink
            to="/case-studies/bare-metal-private-cloud"
            class="group block p-6 md:p-8 border border-white/20 hover:border-primary/50 transition-colors duration-300 no-underline"
            itemprop="hasPart"
            itemscope
            itemtype="https://schema.org/Article"
          >
            <img
              src="/images/case-studies/bare-metal-private-cloud-notext.png"
              alt="Beyond the Cloud: Bare-Metal Private Cloud Case Study"
              class="w-full h-full object-cover rounded-lg mb-6"
              itemprop="image"
            />
            <div class="grid md:grid-cols-4 gap-6 items-start">
              <div class="md:col-span-1">
                <span
                  class="inline-block px-3 py-1 text-xs font-medium bg-primary/10 text-primary border border-primary/30 mb-4"
                >
                  Infrastructure & DevOps
                </span>
                <h3
                  class="text-xl md:text-2xl font-bold mb-2 group-hover:text-primary transition-colors"
                  itemprop="headline"
                >
                  Beyond the Cloud
                </h3>
                <p class="text-sm text-gray-text mb-3" itemprop="alternativeHeadline">Bare-Metal Private Cloud</p>
                <p class="text-xs text-gray-text mt-2">Published Feb 25, 2026</p>
              </div>
              <div class="md:col-span-3">
                <p class="text-gray-text mb-6 leading-relaxed" itemprop="description">
                  How Memetic Block builds and operates private bare-metal cloud infrastructure to keep critical
                  decentralized systems online when centralized providers go down. Full-stack observability, independent
                  CI/CD, and bounded blast radius by design.
                </p>
                <div class="grid grid-cols-2 sm:grid-cols-4 gap-4">
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-lg font-bold text-primary">Full-Stack</p>
                    <p class="text-xs text-gray-text">Observability</p>
                  </div>
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-lg font-bold text-primary">Independent</p>
                    <p class="text-xs text-gray-text">CI/CD Pipelines</p>
                  </div>
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-lg font-bold text-primary">Isolated</p>
                    <p class="text-xs text-gray-text">Networking</p>
                  </div>
                  <div class="text-center p-3 border border-white/10">
                    <p class="text-lg font-bold text-primary">Bounded</p>
                    <p class="text-xs text-gray-text">Blast Radius</p>
                  </div>
                </div>
                <div class="mt-6 flex items-center gap-2 text-primary text-sm font-medium">
                  <span>Read full case study</span>
                  <span class="group-hover:translate-x-1 transition-transform">→</span>
                </div>
              </div>
            </div>
          </RouterLink>

          <!-- Anyone Protocol Case Study Card -->
          <RouterLink
            to="/case-studies/anyone-protocol"
            class="group block p-6 md:p-8 border border-white/20 hover:border-primary/50 transition-colors duration-300 no-underline"
            itemprop="hasPart"
            itemscope
            itemtype="https://schema.org/Article"
          >
            <img
              src="/images/case-studies/fromzerotoanyone-notext.png"
              alt="From Zero to Anyone: Anyone Protocol Case Study"
              class="w-full h-full object-cover rounded-lg mb-6"
              itemprop="image"
            />
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
                <p class="text-xs text-gray-text mt-2">Published Feb 5, 2026</p>
              </div>
              <div class="md:col-span-3">
                <p class="text-gray-text mb-6 leading-relaxed" itemprop="description">
                  How Memetic Block helped Anyone Protocol build an entire DePIN privacy network that took them from an
                  ERC-20 token to 22,000+ registered relays, Multi-chain smart contracts, backend microservices,
                  operator dashboard, and full infrastructure operations.
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
                    <p class="text-2xl font-bold text-primary">70+</p>
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
    </section>

    <!-- CTA Section -->
    <section class="py-16 md:py-24 text-center" aria-labelledby="cta-heading">
      <h2 id="cta-heading" class="text-3xl md:text-4xl font-bold tracking-tight mb-6">Want a system like these?</h2>
      <p class="text-lg md:text-xl text-gray-text leading-relaxed mb-8 max-w-2xl mx-auto">
        We build production systems and stay to operate them. Tell us what you're building.
      </p>
      <div class="flex flex-col sm:flex-row gap-4 justify-center">
        <RouterLink class="btn btn-primary" to="/contact"> Book a Scoping Call → </RouterLink>
        <RouterLink class="btn" to="/work"> View Highlighted Work </RouterLink>
      </div>
    </section>
  </article>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'

useHead({
  title: 'Case Studies - Web3 & DePIN Development Projects',
  link: [{ rel: 'canonical', href: 'https://memeticblock.com/case-studies' }],
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
    { property: 'og:url', content: 'https://memeticblock.com/case-studies' },
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
        url: 'https://memeticblock.com/case-studies',
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
