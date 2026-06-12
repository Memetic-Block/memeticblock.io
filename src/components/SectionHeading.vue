<template>
  <div :class="center ? 'text-center' : 'text-left'">
    <span v-if="eyebrow" class="eyebrow text-primary">{{ eyebrow }}</span>
    <h2 class="text-3xl md:text-4xl font-bold tracking-tight mt-3.5 mb-0">{{ title }}</h2>
    <div class="h-1 w-16 bg-primary mt-4" :class="center ? 'mx-auto' : ''" />
    <p
      v-if="lede"
      class="text-gray-text text-base leading-relaxed mt-5"
      :class="center ? 'mx-auto' : ''"
      :style="{ maxWidth: maxLede }"
    >
      {{ lede }}
    </p>
  </div>
</template>

<style scoped>
.eyebrow {
  font-size: 0.75rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
</style>

<script setup lang="ts">
withDefaults(
  defineProps<{
    eyebrow?: string
    title: string
    lede?: string
    center?: boolean
    maxLede?: string
  }>(),
  {
    eyebrow: '',
    lede: '',
    center: false,
    maxLede: '64ch',
  }
)
</script>
