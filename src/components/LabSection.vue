<template>
  <section class="py-20">
    <SectionHeading
      eyebrow="Research & Development"
      title="The Lab"
      lede="Where we sharpen the craft. Lab projects are ours: built to test ideas, explore the frontier, and keep the guild honest."
      max-lede="60ch"
    />
    <div class="lab-grid grid grid-cols-1 sm:grid-cols-2 gap-6 mt-11 relative">
      <!-- Centered cube mark floated between the 2×2 cards -->
      <div class="lab-center hidden sm:block pointer-events-none z-10">
        <MemeticBlockLogo class="w-10 h-10" />
      </div>
      <AngledCard v-for="l in LAB" :key="l.name" :corner="l.corner" pad="1.4rem 1.6rem">
        <div class="flex flex-col h-full">
          <div class="flex items-center justify-between gap-3">
            <h3 class="text-lg font-bold m-0">{{ l.name }}</h3>
            <StatusLabel :label="l.status" :tone="l.tone" />
          </div>
          <p class="text-gray-text text-sm leading-relaxed mt-3 mb-0">{{ l.body }}</p>
          <a v-if="l.link" :href="l.link.url" :target="l.link.newTab ? '_blank' : '_self'" rel="noopener" class="mt-4 text-sm text-white underline hover:text-primary transition-colors">
            {{ l.link.label }}
          </a>
        </div>
      </AngledCard>
    </div>
  </section>
</template>

<style scoped>
.lab-grid {
  --gap: 1.5rem;
}

/* Make every row the same height as the tallest card so the 2×2 stays a
   uniform block no matter how much text each card holds. */
@media (min-width: 640px) {
  .lab-grid {
    grid-auto-rows: 1fr;
  }
}

.lab-center {
  position: absolute;
  left: 50%;
  /* With equal-height rows the true center of the grid is exactly 50%. */
  top: 50%;
  transform: translate(-50%, -50%);
}
</style>

<script setup lang="ts">
import AngledCard from './AngledCard.vue'
import SectionHeading from './SectionHeading.vue'
import StatusLabel from './StatusLabel.vue'
import MemeticBlockLogo from './MemeticBlockLogo.vue'
import { LAB } from '@/data/portfolio'
</script>
