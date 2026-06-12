<template>
  <article
    class="featured-card grid grid-cols-1 md:grid-cols-2 border border-white/20 hover:border-primary transition-colors"
  >
    <!-- media -->
    <div
      class="overflow-hidden order-1"
      :class="flip ? 'md:order-2 md:border-l md:border-white/10' : 'md:order-1 md:border-r md:border-white/10'"
    >
      <img
        :src="project.img"
        :alt="project.imgAlt"
        class="w-full h-full object-cover block"
        :class="large ? 'min-h-[280px] md:min-h-[360px]' : 'min-h-[220px] md:min-h-[280px]'"
        loading="lazy"
      />
    </div>

    <!-- body -->
    <div
      class="order-2 flex flex-col justify-center"
      :class="[flip ? 'md:order-1' : 'md:order-2', large ? 'p-8 md:p-11' : 'p-7 md:p-9']"
    >
      <div class="flex items-center gap-4 mb-4">
        <span
          class="text-[11px] font-medium uppercase tracking-wide text-primary border border-primary/30 bg-primary/10 px-2.5 py-1"
        >
          {{ project.tag }}
        </span>
        <StatusLabel :label="project.status" :tone="project.tone" />
      </div>

      <component
        :is="large ? 'h2' : 'h3'"
        class="font-bold tracking-tight mt-0 mb-4"
        :class="large ? 'text-2xl md:text-3xl' : 'text-2xl'"
      >
        {{ project.name }}
      </component>

      <p class="text-gray-text leading-relaxed m-0" :class="large ? 'text-base' : 'text-sm md:text-[15px]'">
        {{ project.body }}
      </p>

      <!-- stats -->
      <template v-if="project.stats">
        <div v-if="large" class="flex flex-wrap gap-6 mt-6 pt-5 border-t border-white/10">
          <span v-for="s in project.stats.split(' · ')" :key="s" class="text-sm font-medium text-white">{{ s }}</span>
        </div>
        <p v-else class="text-sm text-white font-medium mt-4 mb-0">{{ project.stats }}</p>
      </template>

      <!-- footer -->
      <div v-if="large" class="flex flex-wrap items-center gap-5 mt-6">
        <span class="text-xs text-gray-500 italic">Operated by Memetic Block since launch.</span>
        <a
          v-if="project.external"
          :href="`https://${project.external}`"
          target="_blank"
          rel="noopener noreferrer"
          class="text-sm text-white underline hover:text-primary transition-colors"
        >
          {{ project.external }} →
        </a>
      </div>
      <RouterLink
        v-else
        :to="project.caseStudy"
        class="self-start mt-5 text-sm text-white underline hover:text-primary transition-colors"
      >
        Case study →
      </RouterLink>
    </div>
  </article>
</template>

<script setup lang="ts">
import StatusLabel from './StatusLabel.vue'
import type { FeaturedProject } from '@/data/portfolio'

withDefaults(
  defineProps<{
    project: FeaturedProject
    /** Reverse media/body order for an alternating layout. */
    flip?: boolean
    /** Larger Work-page treatment with a stats row and external link. */
    large?: boolean
  }>(),
  {
    flip: false,
    large: false,
  }
)
</script>
