<template>
  <span class="status-label" :style="{ color }">
    <span v-if="dot" class="status-dot" :class="{ pulse }" :style="{ background: color }" />
    {{ label }}
  </span>
</template>

<style scoped>
.status-label {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  font-size: 0.75rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  white-space: nowrap;
}

.status-dot {
  width: 7px;
  height: 7px;
  border-radius: 999px;
  display: inline-block;
}

.status-dot.pulse {
  animation: mbpulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}

@keyframes mbpulse {
  0%,
  100% {
    opacity: 1;
  }
  50% {
    opacity: 0.25;
  }
}

@media (prefers-reduced-motion: reduce) {
  .status-dot.pulse {
    animation: none;
  }
}
</style>

<script setup lang="ts">
import { computed } from 'vue'

const props = withDefaults(
  defineProps<{
    label: string
    /** Terminal status hue. */
    tone?: 'success' | 'info' | 'warning' | 'muted'
    dot?: boolean
    pulse?: boolean
  }>(),
  {
    tone: 'success',
    dot: true,
    pulse: false,
  }
)

const TONE_COLOR: Record<string, string> = {
  success: 'var(--color-success)',
  info: 'var(--color-info)',
  warning: 'var(--color-warning)',
  muted: 'var(--color-gray-text)',
}

const color = computed(() => TONE_COLOR[props.tone] ?? TONE_COLOR.success)
</script>
