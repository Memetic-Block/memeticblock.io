<template>
  <section class="py-20">
    <SectionHeading
      eyebrow="R&D"
      title="The Lab"
      lede="Where we sharpen the craft. Lab projects are ours — built to test ideas, win hackathons, and keep the guild honest."
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
        </div>
      </AngledCard>
    </div>
  </section>
</template>

<style scoped>
.lab-grid {
  --gap: 1.5rem;
}

.lab-center {
  position: absolute;
  left: 50%;
  top: calc(50% - var(--gap) / 2);
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
