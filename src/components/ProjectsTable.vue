<template>
  <section id="projects" class="py-8">
    <!-- Intro -->
    <div class="mb-8">
      <p class="text-lg">
        <span class="font-bold">MEMETIC BLOCK</span> is a
        <span class="italic">Software Guild</span> focused on building
        distributed systems of value and
        realizing creativity in the spaces
        between them.
      </p>
      <p class="mt-4">
        We believe that software is willpower automated.
      </p>
      <p class="mt-4">
        We are currently <span class="text-success font-bold">OPEN</span> to new projects →
        <a class="underline hover:text-primary transition-colors" href="mailto:build@memeticblock.com" target="_blank">
          build@memeticblock.com
        </a>
      </p>
    </div>

    <!-- Projects Grid -->
    <div class="border-t border-white/20 pt-8">
      <h2 class="text-2xl font-bold mb-6">Projects</h2>
      <div class="projects-grid grid grid-cols-1 sm:grid-cols-2 gap-6">
        <article
          v-for="project in projects"
          :key="project.name"
          class="border border-white/30 p-6 hover:border-primary transition-colors"
        >
          <h3 class="text-lg font-bold m-0">
            {{ project.name }}<sup v-if="project.sup" class="text-xs">{{ project.sup }}</sup>
          </h3>
          <span
              :class="[
                'text-xs font-bold uppercase py-1',
                project.statusColor === 'info' ? 'text-info' :
                project.statusColor === 'warning' ? 'text-warning' :
                'text-success'
              ]"
            >
              {{ project.status }}
            </span>
          <p class="text-gray-text text-sm mb-4 m-0">{{ project.type }}</p>
          <ul class="list-none m-0 p-0 mb-4 space-y-1">
            <li v-for="info in project.info" :key="info" class="text-sm">
              <span v-html="info"></span>
            </li>
          </ul>
          <a
            v-if="project.url"
            :href="project.url"
            target="_blank"
            class="inline-block text-sm underline hover:text-primary transition-colors"
          >
            {{ project.linkText }} →
          </a>
          <span v-else class="text-sm text-gray-text">{{ project.linkText }}</span>
        </article>
      </div>
      <p class="mt-6 text-xs text-gray-text italic">
        <sup>*</sup> Project owned by a third party with Engineering Consulting Services provided by Memetic Block.
      </p>
    </div>

    <!-- GitHub Links -->
    <div class="border-t border-white/20 pt-8 mt-8">
      <p>
        For code, please see
        <a class="underline hover:text-primary transition-colors" href="https://github.com/memetic-block" target="_blank">github.com/memetic-block</a>
        or
        <a class="underline hover:text-primary transition-colors" href="https://github.com/art-by-city" target="_blank">github.com/art-by-city</a>
      </p>
    </div>

    <!-- Credits -->
    <div class="border-t border-white/20 pt-8 mt-8">
      <p class="font-bold mb-4">Moral Obligatories</p>
      <ul class="list-disc list-inside m-0 p-0">
        <li>
          <a class="underline hover:text-primary transition-colors" href="https://berkeleymono.com" target="_blank">Berkeley Mono</a> font
          by
          <a class="underline hover:text-primary transition-colors" href="https://usgraphics.com/" target="_blank">
            U.S. Graphics Company
          </a>
        </li>
      </ul>
    </div>
  </section>
</template>

<script setup lang="ts">
const projects = [
  {
    name: 'Anyone Protocol',
    type: 'DePIN VPN Network',
    status: 'Live',
    url: 'https://anyone.io',
    linkText: 'anyone.io',
    sup: '*',
    info: ['6,000+ relays registered.']
  },
  {
    name: 'Wuzzy Search',
    type: 'Permaweb Search Engine',
    status: 'Live Alpha',
    url: 'https://wuzzy.io',
    linkText: 'wuzzy.io',
    info: [
      'Premiere Permaweb Search Engine',
      'Agents of AO Hackathon Winner 2025'
    ]
  },
  {
    name: 'Frostor',
    type: 'Arweave Gateway',
    status: 'Live',
    url: 'https://frostor.xyz',
    linkText: 'frostor.xyz',
    info: ['200k+ $ARIO staked.', 'Top performance.']
  },
  {
    name: 'Art By City',
    type: 'Artist Web3 Empowerment',
    status: 'Healing',
    statusColor: 'info',
    url: 'https://artbycity.frostor.xyz',
    linkText: 'artbycity',
    info: ['60+ artists.', '40+ gb of art.', '31k+ data transactions.']
  },
]
</script>
