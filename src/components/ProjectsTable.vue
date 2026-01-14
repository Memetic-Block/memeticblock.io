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
      <h2 class="text-2xl font-bold mb-6">Our Work</h2>
      <div class="projects-grid grid grid-cols-1 sm:grid-cols-2 gap-6 relative">
        <!-- Centered Logo -->
        <div class="logo-center hidden sm:block pointer-events-none z-10">
          <MemeticBlockLogo class="w-10 h-10" />
        </div>
        <article
          v-for="(project, index) in projects"
          :key="project.name"
          :class="[
            'border',
            'border-white/30 before:border-white/30 after:border-white/30',
            'px-6 py-4',
            'hover:border-primary',
            'transition-colors',
            'flex flex-col',
            'angled-corner',
            index === 0 ? 'corner-bottom-right' : '',
            index === 1 ? 'corner-bottom-left' : '',
            index === 2 ? 'corner-top-right' : '',
            index === 3 ? 'corner-top-left' : ''
          ]"
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
          <ul class="list-none m-0 p-0 mb-4 space-y-1 flex-1">
            <li v-for="info in project.info" :key="info" class="text-sm">
              <span v-html="info"></span>
            </li>
          </ul>
          <div :class="['text-right', index % 2 === 0 ? 'sm:text-left' : 'sm:text-right']">
            <a
              v-if="project.url"
              :href="project.url"
              target="_blank"
              class="inline-block text-sm underline hover:text-primary transition-colors"
            >
              {{ project.linkText }} →
            </a>
            <span v-else class="text-sm text-gray-text">{{ project.linkText }}</span>
          </div>
        </article>
      </div>
      <p class="mt-6 text-xs text-gray-text italic">
        <sup>*</sup> Project owned by a third party with Engineering Consulting Services provided by Memetic Block.
      </p>
    </div>

    <!-- GitHub Links -->
    <div class="border-t border-white/20 pt-8 mt-8">
      <p>
        For code & other projects, please see
        <a class="underline hover:text-primary transition-colors" href="https://github.com/memetic-block" target="_blank">github.com/memetic-block</a>
        or
        <a class="underline hover:text-primary transition-colors" href="https://github.com/art-by-city" target="_blank">github.com/art-by-city</a>
      </p>
    </div>
  </section>
</template>

<style scoped>
.projects-grid {
  --gap: 1.5rem; /* gap-6 = 24px = 1.5rem */
}

.logo-center {
  position: absolute;
  left: 50%;
  top: calc(50% - var(--gap) / 2);
  transform: translate(-50%, -50%);
}

.angled-corner {
  position: relative;
  --corner-size: 24px;
  --border-color: rgba(255, 255, 255, 0.3);
}

/* On small screens, use regular border */
@media (max-width: 639px) {
  .angled-corner {
    border: 1px solid var(--border-color) !important;
  }
  .angled-corner:hover {
    border-color: var(--color-primary) !important;
  }
  .angled-corner::before,
  .angled-corner::after {
    display: none;
  }
}

/* On sm+ screens, use angled corners */
@media (min-width: 640px) {
  .angled-corner {
    border: none !important;
  }

  .angled-corner::before {
    content: '';
    position: absolute;
    inset: 0;
    background: var(--border-color);
    z-index: -1;
  }

  .angled-corner::after {
    content: '';
    position: absolute;
    inset: 1px;
    background: var(--color-background);
    clip-path: inherit;
    z-index: -1;
  }

  .angled-corner:hover {
    --border-color: var(--color-primary);
  }

  /* Top-left card: angled corner on bottom-right */
  .corner-bottom-right {
    clip-path: polygon(
      0 0,
      100% 0,
      100% calc(100% - var(--corner-size)),
      calc(100% - var(--corner-size)) 100%,
      0 100%
    );
  }

  /* Top-right card: angled corner on bottom-left */
  .corner-bottom-left {
    clip-path: polygon(
      0 0,
      100% 0,
      100% 100%,
      var(--corner-size) 100%,
      0 calc(100% - var(--corner-size))
    );
  }

  /* Bottom-left card: angled corner on top-right */
  .corner-top-right {
    clip-path: polygon(
      0 0,
      calc(100% - var(--corner-size)) 0,
      100% var(--corner-size),
      100% 100%,
      0 100%
    );
  }

  /* Bottom-right card: angled corner on top-left */
  .corner-top-left {
    clip-path: polygon(
      var(--corner-size) 0,
      100% 0,
      100% 100%,
      0 100%,
      0 var(--corner-size)
    );
  }
}
</style>

<script setup lang="ts">
import MemeticBlockLogo from './MemeticBlockLogo.vue'

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
    info: ['200k+ $ARIO staked.']
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
