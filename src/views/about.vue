<template>
  <article class="about-page" itemscope itemtype="https://schema.org/Organization">
    <!-- Hero -->
    <header class="py-16 md:py-20 text-center">
      <div class="max-w-3xl mx-auto px-4">
        <span class="eyebrow text-primary">About</span>
        <h1
          class="text-3xl md:text-5xl font-bold leading-tight tracking-tight mt-4 mb-5 max-w-[20ch] mx-auto"
          itemprop="name"
        >
          A senior engineering <span class="text-primary">guild</span>, not an agency.
        </h1>
        <p class="text-lg md:text-xl text-gray-text leading-relaxed max-w-[56ch] mx-auto mb-8" itemprop="description">
          Senior engineers for distributed systems and production AI. We architect systems, build them, and stay to
          operate them — small, senior, and accountable.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <RouterLink class="btn btn-primary" to="/contact">Book a Scoping Call →</RouterLink>
          <RouterLink class="btn" to="/work">View Our Work</RouterLink>
        </div>
      </div>
    </header>

    <!-- Expertise -->
    <section id="expertise" class="py-12 md:py-16" aria-labelledby="expertise-heading">
      <div class="text-center mb-12">
        <span class="eyebrow text-primary">What we do</span>
        <h2 id="expertise-heading" class="text-3xl md:text-4xl font-bold mt-3 mb-2">Our Expertise</h2>
        <p class="text-gray-text max-w-[52ch] mx-auto">
          Full-stack capabilities across distributed systems, infrastructure, and production AI.
        </p>
      </div>
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        <div v-for="card in EXPERTISE" :key="card.h" class="p-7 border border-white/20">
          <div class="w-11 h-11 mb-5 flex items-center justify-center border border-primary/30 text-primary text-lg">
            ■
          </div>
          <h3 class="text-lg font-bold mb-4">{{ card.h }}</h3>
          <ul class="list-none m-0 p-0 grid gap-3">
            <li v-for="item in card.items" :key="item" class="flex gap-2.5 text-[13px] text-gray-text">
              <span class="text-primary">→</span><span>{{ item }}</span>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <!-- Method -->
    <section id="how-we-work" class="py-12 md:py-16" aria-labelledby="process-heading">
      <div class="text-center mb-12">
        <span class="eyebrow text-primary">Method</span>
        <h2 id="process-heading" class="text-3xl md:text-4xl font-bold mt-3 mb-2">How We Work</h2>
        <p class="text-gray-text">Ownership and accountability, built into every engagement.</p>
      </div>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        <div v-for="step in PROCESS" :key="step[0]" class="p-6 border border-white/10">
          <div class="text-4xl font-bold text-primary/35 mb-3">{{ step[0] }}</div>
          <h3 class="text-[17px] font-bold mb-2">{{ step[1] }}</h3>
          <p class="text-[13px] text-gray-text leading-relaxed m-0">{{ step[2] }}</p>
        </div>
      </div>
    </section>

    <!-- Closing CTA -->
    <section class="py-14 text-center">
      <h2 class="text-3xl md:text-4xl font-bold tracking-tight mx-auto mb-6 max-w-[22ch]">
        Need a team that takes ownership and stays?
      </h2>
      <div class="flex flex-col sm:flex-row gap-4 justify-center mb-8">
        <RouterLink class="btn btn-primary text-lg px-8 py-4" to="/contact">Book a Scoping Call →</RouterLink>
        <a class="btn text-lg px-8 py-4" :href="`mailto:${EMAIL}`">Email Us Directly</a>
      </div>
      <span class="status-capsule normal-case tracking-normal font-medium">
        <span class="status-dot animate-mbpulse" />
        Currently accepting new engagements
      </span>
    </section>
  </article>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'
import { EMAIL } from '@/data/portfolio'

const EXPERTISE = [
  {
    h: 'Technologies & Platforms',
    items: [
      'Distributed systems & DePIN networks',
      'Multi-chain (Ethereum, Arweave, Solana)',
      'Backend platforms, APIs & data',
      'AI / LLM systems & agent pipelines',
      'Smart contracts & token systems',
    ],
  },
  {
    h: 'How We Engage',
    items: [
      'Engineering Retainer — build & operate',
      'Production Readiness Audit — fixed-fee',
      'Scoped Builds — fixed scope & fee',
      'Named senior architect, accountable',
      'Operations & on-call, defined windows',
    ],
  },
  {
    h: 'What We Run',
    items: [
      'Anyone Protocol — full stack, since launch',
      'Bare-metal private cloud infrastructure',
      'CI/CD & full-stack observability',
      'Incident response & on-call',
      'Senior engineers only — no bench',
    ],
  },
]

const PROCESS: [string, string, string][] = [
  ['01', 'Senior-Only', 'No bench, no handoffs, no juniors learning on your dime. The people who scope it build it.'],
  ['02', 'We Own It', 'Architecture decisions, hands-on build, and the pager. We run what we build.'],
  ['03', 'Continuous Delivery', 'Automated testing, CI/CD pipelines, and real-time monitoring on every system.'],
  ['04', 'Transparent Cadence', 'Weekly sync, an open backlog, and direct access to the engineers doing the work.'],
  ['05', 'Designed to Fail Small', 'Bounded blast radius, rollback paths, and observability before you need them.'],
  [
    '06',
    'Accountable, Long-Term',
    'We build with the instincts of a team that knows it may run this system next year.',
  ],
]

useHead({
  title: 'About - A Senior Engineering Guild',
  link: [{ rel: 'canonical', href: 'https://memeticblock.com/about' }],
  meta: [
    { property: 'og:title', content: 'About Memetic Block | A Senior Engineering Guild' },
    {
      name: 'description',
      content:
        'Memetic Block is a senior engineering guild for distributed systems and production AI. We architect, ' +
        'build, and operate production systems — senior engineers only, accountable long-term.',
    },
    { name: 'twitter:title', content: 'About Memetic Block | A Senior Engineering Guild' },
    {
      name: 'twitter:description',
      content:
        'Senior engineers for distributed systems and production AI. We build it, then we stay to run it — the ' +
        'team behind Anyone Protocol.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.com/about' },
    {
      name: 'keywords',
      content:
        'senior software engineering guild, distributed systems engineering, production AI, fractional CTO, ' +
        'engineering retainer, production readiness audit, DePIN infrastructure, smart contract development',
    },
    { name: 'robots', content: 'index, follow' },
    { property: 'og:locale', content: 'en_US' },
  ],
  script: [
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'Organization',
        name: 'Memetic Block',
        url: 'https://memeticblock.com',
        logo: 'https://memeticblock.com/logo/memetic-block/memetic-block.svg',
        description:
          'A senior engineering guild for distributed systems and production AI. We build and operate ' +
          'production systems on retainer.',
        email: 'build@memeticblock.com',
        sameAs: ['https://x.com/memeticblock', 'https://github.com/memetic-block'],
        knowsAbout: [
          'Distributed Systems',
          'Production AI',
          'DePIN',
          'Blockchain Development',
          'Smart Contracts',
          'Infrastructure Operations',
          'Arweave',
          'Ethereum',
          'Solana',
        ],
        hasOfferCatalog: {
          '@type': 'OfferCatalog',
          name: 'Engineering Services',
          itemListElement: [
            { '@type': 'Offer', itemOffered: { '@type': 'Service', name: 'Engineering Retainer' } },
            { '@type': 'Offer', itemOffered: { '@type': 'Service', name: 'Production Readiness Audit' } },
            { '@type': 'Offer', itemOffered: { '@type': 'Service', name: 'Scoped Builds' } },
          ],
        },
      }),
    },
  ],
})
</script>
