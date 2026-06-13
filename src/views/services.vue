<template>
  <div>
    <!-- Page header -->
    <header class="pt-16 pb-12">
      <span class="eyebrow text-primary">Services</span>
      <h1 class="text-4xl md:text-5xl font-bold tracking-tight mt-4">Engineering Services</h1>
      <div class="h-1 w-16 bg-primary mt-5" />
      <p class="text-lg md:text-xl text-gray-text leading-relaxed mt-6 mb-9 max-w-[58ch]">
        A guild - not an agency - Small, senior, and accountable. We architect systems, build them, and stay to operate
        them. Three ways to engage us.
      </p>
      <div class="flex flex-wrap gap-3">
        <RouterLink
          v-for="s in SERVICES"
          :key="s.id"
          :to="{ path: '/services', hash: `#${s.id}` }"
          class="inline-flex items-center gap-2.5 text-[13px] text-white no-underline border border-white/30 px-4 py-2.5 hover:border-primary transition-colors"
        >
          <span class="text-primary font-bold">§{{ Number(s.no) }}</span
          >{{ s.name }}
        </RouterLink>
      </div>
    </header>

    <!-- Service blocks -->
    <section v-for="s in SERVICES" :id="s.id" :key="s.id" class="scroll-mt-24 py-16 border-t border-white/20">
      <div class="grid grid-cols-1 lg:grid-cols-[0.9fr_1.1fr] gap-10 lg:gap-14 items-start pt-4">
        <!-- left rail -->
        <div class="lg:sticky lg:top-24">
          <span class="text-[13px] font-bold text-primary">§{{ Number(s.no) }}</span>
          <h2 class="text-2xl md:text-3xl font-bold tracking-tight mt-3.5 mb-4">{{ s.name }}</h2>
          <div class="h-1 w-16 bg-primary mb-5" />
          <p class="text-lg text-white font-medium leading-snug mb-4">{{ s.tagline }}</p>
          <p class="text-[15px] text-gray-text leading-relaxed mb-7">{{ s.intro }}</p>
          <RouterLink class="btn btn-primary" to="/contact">Book a Scoping Call →</RouterLink>
        </div>

        <!-- right detail -->
        <div>
          <p class="eyebrow text-gray-text mt-8 mb-4">{{ s.listLabel }}</p>

          <ul v-if="s.list" class="list-none m-0 mb-8 p-0 border-t border-white/10">
            <li v-for="[h, b] in s.list" :key="h" class="grid grid-cols-[20px_1fr] gap-3 py-4 border-b border-white/10">
              <span class="text-primary font-bold">→</span>
              <span class="text-[15px] leading-relaxed">
                <b class="font-bold">{{ h }}</b> <span class="text-gray-text">— {{ b }}</span>
              </span>
            </li>
          </ul>

          <div v-if="s.chips" class="flex flex-wrap gap-2.5 mb-8">
            <span v-for="c in s.chips" :key="c" class="text-[13px] text-gray-text border border-white/20 px-3.5 py-2">
              {{ c }}
            </span>
          </div>

          <div class="grid gap-6">
            <div v-for="[h, b] in s.blocks" :key="h">
              <p class="eyebrow text-primary mb-2">{{ h }}</p>
              <p class="text-[15px] text-gray-text leading-relaxed m-0">{{ b }}</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Cost block -->
    <section class="border-t border-white/20 pt-16">
      <div class="border border-white/20 p-8 md:p-12 grid grid-cols-1 md:grid-cols-2 gap-8 md:gap-10 items-center">
        <div>
          <span class="eyebrow text-primary">Building with us</span>
          <h2 class="text-2xl md:text-3xl font-bold tracking-tight mt-3.5">What does it cost?</h2>
        </div>
        <div>
          <p class="text-[15px] md:text-base text-gray-text leading-relaxed mb-7">
            Retainers are fixed monthly fees scoped to your system; audits and builds are fixed-fee. We'll give you a
            precise quote within 48 hours of a scoping call with no discovery theater and no surprise invoices.
          </p>
          <div class="flex flex-wrap items-center gap-4">
            <RouterLink class="btn btn-primary" to="/contact">Book a Scoping Call →</RouterLink>
            <a :href="`mailto:${EMAIL}`" class="text-sm text-gray-text underline hover:text-primary transition-colors">
              {{ EMAIL }}
            </a>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'
import { EMAIL } from '@/data/portfolio'

type ServiceBlock = {
  id: string
  no: string
  name: string
  tagline: string
  intro: string
  listLabel: string
  list?: [string, string][]
  chips?: string[]
  blocks: [string, string][]
}

const SERVICES: ServiceBlock[] = [
  {
    id: 'retainer',
    no: '01',
    name: 'Engineering Retainer',
    tagline: 'Your senior engineering team, on call.',
    intro:
      'For teams that need real ownership without hiring a full-time staff: we take responsibility for your stack the way an in-house team would — architecture decisions, hands-on build, infrastructure, and the pager.',
    listLabel: "What's included",
    list: [
      ['Architecture ownership', 'a named senior architect accountable for your technical direction.'],
      [
        'Hands-on engineering',
        'distributed systems, backend platforms, AI/LLM systems, smart contracts, infrastructure.',
      ],
      ['Operations & on-call', 'monitoring, incident response, and defined response windows. We run what we build.'],
      ['A standing cadence', 'weekly sync, transparent backlog, direct access to the engineers doing the work.'],
    ],
    blocks: [
      [
        "Who it's for",
        'Funded startups shipping AI or platform products; protocols and networks that need their stack maintained and evolved; any team where downtime has real consequences.',
      ],
      [
        'How it works',
        'Fixed monthly retainer, scoped to your system and response requirements. Month to month after an initial term. Senior engineers only. We keep a deliberately small roster — slots are limited.',
      ],
      [
        'The proof',
        'The model that built Anyone Protocol. We built their entire stack from zero and have operated it ever since — through launch, through growth past 22,000 registered relays, through every incident.',
      ],
    ],
  },
  {
    id: 'audit',
    no: '02',
    name: 'Production Readiness Audit',
    tagline: 'Your prototype got you funded. Now it has to survive production.',
    intro:
      'A fixed-fee, two-week review of your system by senior engineers who operate production infrastructure for a living — not a junior checklist exercise. You get a clear, prioritized picture of what will break, what it will cost you, and exactly what to fix first.',
    listLabel: 'What we examine',
    list: [
      [
        'Architecture & scalability',
        'service boundaries, data flow, failure modes, and what happens at 10× your current load.',
      ],
      ['Security & data handling', 'secrets, keys, authentication paths, and the assumptions an adversary would test.'],
      ['Infrastructure & deployment', 'environments, CI/CD, rollback paths, and single points of failure.'],
      ['Observability & on-call readiness', "whether you'll know it broke before your users do."],
      [
        'AI / LLM pipeline (where applicable)',
        'inference cost and latency, evaluation, guardrails, fallback behavior, vendor lock-in exposure.',
      ],
      ['Operating cost profile', 'where the spend goes, and which line items will scale against you.'],
    ],
    blocks: [
      [
        'What you get',
        'A written findings report ranked by severity and blast radius, a prioritized hardening roadmap (quick wins vs. structural work, with effort estimates), and an executive readout with our senior engineers.',
      ],
      [
        'Terms',
        'Fixed fee. Two weeks, kickoff to readout. The full audit fee is credited toward a retainer signed within 30 days.',
      ],
    ],
  },
  {
    id: 'scoped',
    no: '03',
    name: 'Scoped Builds',
    tagline: 'A defined system, designed and shipped.',
    intro:
      'When the work has clear edges, we scope it, price it, and build it — production-grade from the first commit, with the operational instincts of a team that knows it may be running this system next year.',
    listLabel: 'Typical engagements',
    chips: [
      'Protocol & network infrastructure',
      'Backend platforms & APIs',
      'AI/LLM systems & agent pipelines',
      'Smart contracts & token systems',
      'Infrastructure & DevOps overhauls',
      'B2B Integrations & full SaaS stacks'
    ],
    blocks: [
      [
        'How it works',
        "Fixed scope and fee, agreed before work begins. Every build ships with documentation, observability, and a handoff plan — or rolls into a retainer if you'd rather we keep running it.",
      ],
    ],
  },
]

useHead({
  title: 'Services - Engineering Retainer, Audits & Scoped Builds',
  link: [{ rel: 'canonical', href: 'https://memeticblock.com/services' }],
  meta: [
    {
      name: 'description',
      content:
        'Three ways to engage Memetic Block: a build-and-operate Engineering Retainer, a fixed-fee Production ' +
        'Readiness Audit, and Scoped Builds. Senior engineers only — we run what we build.',
    },
    { property: 'og:title', content: 'Services | Memetic Block' },
    {
      property: 'og:description',
      content: 'Engineering Retainer, Production Readiness Audit, and Scoped Builds — small, senior, and accountable.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.com/services' },
  ],
})
</script>
