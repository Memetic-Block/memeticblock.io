<template>
  <div>
    <!-- Hero -->
    <section class="min-h-[58vh] flex flex-col items-center justify-center text-center pt-12 pb-12 px-4">
      <MemeticBlockLogo class="w-40 h-40 md:w-40 md:h-40" />
      <!-- <span class="text-lg mt-0 whitespace-nowrap">
        <span class="font-bold">MEMETIC</span> <span class="font-normal">BLOCK</span>
      </span> -->
      <!-- <span class="eyebrow mt-7"><span class="font-bold">Memetic</span> Block</span> -->
      <h1 class="text-4xl md:text-5xl font-bold leading-tight tracking-tight mt-4 max-w-[28ch]">
        We build production systems.<br />Then we stay to <span class="text-primary">run them.</span>
      </h1>
      <p class="text-lg text-gray-text leading-relaxed mt-6 mb-8 max-w-[66ch]">
        We are senior engineers experienced in distributed systems and production AI.
        We architect, build, and operate your stack from zero to production,
        like Anyone Protocol's 7,600+ active relay DePIN privacy network.
        <span class="text-white font-bold">Our pager, <span class="text-primary">not yours.</span></span>
      </p>
      <div class="flex flex-wrap gap-4 justify-center">
        <RouterLink class="btn btn-primary" to="/contact">Book a Scoping Call →</RouterLink>
        <RouterLink class="btn" to="/case-studies/anyone-protocol">Read the Case Study →</RouterLink>
      </div>
    </section>

    <!-- Proof bar -->
    <!-- <div class="border-y border-white/10">
      <div class="grid grid-cols-2 md:grid-cols-4">
        <div
          v-for="(p, i) in PROOF"
          :key="p.label"
          class="flex flex-col gap-1.5 px-5 py-6"
          :class="[
            i % 2 !== 0 ? 'border-l border-white/10' : '',
            i >= 2 ? 'border-t md:border-t-0 border-white/10' : '',
            i === 2 ? 'md:border-l' : '',
          ]"
        >
          <span v-if="p.num" class="text-2xl font-bold tracking-tight">{{ p.num }}</span>
          <span v-else class="flex items-center h-8">
            <span class="w-2.5 h-2.5 rounded-full bg-success animate-mbpulse" />
          </span>
          <span class="text-[13px] text-gray-text">{{ p.label }}</span>
        </div>
      </div>
    </div> -->

    <!-- What we do -->
    <section class="pt-2 pb-2">
      <SectionHeading
        title="Most firms build and leave."
        lede="We build and answer the pager. Every engagement is senior engineers only: no bench, no handoffs, no juniors learning on your dime."
        max-lede="60ch"
      />
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-11">
        <AngledCard
          v-for="(o, i) in OFFERS"
          :key="o.id"
          :corners="['tr', 'bl']"
          pad="1.75rem 1.75rem 1.85rem"
          class="min-h-[262px]"
        >
        <!-- :corner="(['tr', 'tr', 'tr'] as const)[i]" -->
          <div class="flex flex-col h-full">
            <span class="text-[13px] font-bold text-primary">{{ o.no }}</span>
            <h3 class="text-xl font-bold mt-3.5 mb-3">{{ o.name }}</h3>
            <p class="text-sm text-gray-text leading-relaxed m-0 flex-1">{{ o.body }}</p>
            <RouterLink
              :to="{ path: '/services', hash: `#${o.id}` }"
              class="self-start mt-4 text-[13px] text-white underline hover:text-primary transition-colors"
            >
              Learn more →
            </RouterLink>
          </div>
        </AngledCard>
      </div>
    </section>

    <!-- Flavor divider -->
    <div class="border-y border-white/10 mt-20 py-10 text-center">
      <p class="m-0 text-lg text-gray-500 italic tracking-wide">Software is willpower automated.</p>
    </div>

    <!-- Featured work -->
    <section class="pt-20">
      <SectionHeading
        eyebrow="Selected work"
        title="Work"
        lede="Systems we've architected, shipped, and operate today."
        max-lede="60ch"
      />
      <div class="grid gap-7 mt-11">
        <FeaturedWorkCard v-for="(c, i) in FEATURED" :key="c.id" :project="c" :flip="i % 2 === 1" />
      </div>
    </section>

    <!-- The Lab -->
    <LabSection />

    <!-- Closing CTA -->
    <section class="pt-2">
      <div class="border border-white/20 px-6 py-12 md:px-12 md:py-14 text-center">
        <span class="status-capsule mb-6">
          <span class="status-dot animate-mbpulse" />
          Accepting new engagements
        </span>
        <h2 class="text-3xl md:text-4xl font-bold tracking-tight mx-auto mb-4 max-w-[22ch]">
          Currently open to new engagements.
        </h2>
        <p class="text-base text-gray-text leading-relaxed mx-auto mb-8 max-w-[56ch]">
          We keep the roster small on purpose. If you need senior engineers who take ownership and stay accountable,
          let's talk.
        </p>
        <div class="flex flex-wrap gap-4 justify-center items-center">
          <RouterLink class="btn btn-primary" to="/contact">Book a Scoping Call →</RouterLink>
          <a :href="`mailto:${EMAIL}`" class="text-sm text-gray-text underline hover:text-primary transition-colors">
            {{ EMAIL }}
          </a>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'
import MemeticBlockLogo from '@/components/MemeticBlockLogo.vue'
import SectionHeading from '@/components/SectionHeading.vue'
import AngledCard from '@/components/AngledCard.vue'
import FeaturedWorkCard from '@/components/FeaturedWorkCard.vue'
import LabSection from '@/components/LabSection.vue'
import { PROOF, OFFERS, FEATURED, EMAIL } from '@/data/portfolio'

useHead({
  title: 'Memetic Block',
  link: [{ rel: 'canonical', href: 'https://memeticblock.com' }],
  meta: [
    {
      name: 'description',
      content:
        'Senior engineers for distributed systems and production AI. We build production systems and stay to ' +
        'run them — the team behind Anyone Protocol, on retainer since launch.',
    },
    { property: 'og:title', content: 'Memetic Block — We build production systems. Then we stay to run them.' },
    {
      property: 'og:description',
      content:
        'A senior engineering guild for distributed systems and production AI. Build-and-operate retainers, ' +
        'production readiness audits, and scoped builds.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.com' },
  ],
})
</script>
