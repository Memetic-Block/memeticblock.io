<template>
  <component
    :is="tag"
    :class="{
      'angled-card': true,
      [`corner-br`]: Array.isArray(corners) && (corners as Corner[]).includes('br') || corner === 'br',
      [`corner-bl`]: Array.isArray(corners) && (corners as Corner[]).includes('bl') || corner === 'bl',
      [`corner-tr`]: Array.isArray(corners) && (corners as Corner[]).includes('tr') || corner === 'tr',
      [`corner-tl`]: Array.isArray(corners) && (corners as Corner[]).includes('tl') || corner === 'tl',
      hoverable: hoverable
    }"
    :style="{ padding: pad }"
  >
    {{
      Array.isArray(corners) && (corners as Corner[]).includes('br'),
      Array.isArray(corners) && (corners as Corner[]).includes('bl'),
      Array.isArray(corners) && (corners as Corner[]).includes('tr'),
      Array.isArray(corners) && (corners as Corner[]).includes('tl')
    }}
    <span class="angled-fill" aria-hidden="true" />
    <div class="angled-content"><slot /></div>
  </component>
</template>

<style scoped>
.angled-card {
  position: relative;
  --corner-size: 24px;
  background: rgba(255, 255, 255, 0.3);
  transition: background-color 0.2s cubic-bezier(0.4, 0, 0.2, 1);
}

.angled-fill {
  position: absolute;
  inset: 1px;
  background: var(--color-background);
  clip-path: inherit;
}

.angled-content {
  position: relative;
  height: 100%;
  box-sizing: border-box;
}

/* Sharp angled corners only on sm+; plain hairline border on mobile. */
@media (max-width: 639px) {
  .angled-card {
    background: transparent;
    border: 1px solid rgba(255, 255, 255, 0.3);
    clip-path: none !important;
  }
  .angled-card.hoverable:hover {
    border-color: var(--color-primary);
  }
  .angled-fill {
    display: none;
  }
}

@media (min-width: 640px) {
  .angled-card.hoverable:hover {
    background: var(--color-primary);
  }

  .corner-br {
    clip-path: polygon(0 0, 100% 0, 100% calc(100% - var(--corner-size)), calc(100% - var(--corner-size)) 100%, 0 100%);
  }
  .corner-bl {
    clip-path: polygon(0 0, 100% 0, 100% 100%, var(--corner-size) 100%, 0 calc(100% - var(--corner-size)));
  }
  .corner-tr {
    clip-path: polygon(0 0, calc(100% - var(--corner-size)) 0, 100% var(--corner-size), 100% 100%, 0 100%);
  }
  .corner-tl {
    clip-path: polygon(var(--corner-size) 0, 100% 0, 100% 100%, 0 100%, 0 var(--corner-size));
  }
}
</style>

<script setup lang="ts">
type Corner = 'br' | 'bl' | 'tr' | 'tl'
withDefaults(
  defineProps<{
    /** Which corner gets the 24px diagonal cut. */
    corner?: Corner
    corners?: Corner[]
    /** Raise the hairline frame to the red accent on hover. */
    hoverable?: boolean
    /** Inner padding (any CSS length / shorthand). */
    pad?: string
    /** Element to render as. */
    tag?: string
  }>(),
  {
    corner: 'br',
    hoverable: true,
    pad: '1.5rem 1.6rem',
    tag: 'article',
  }
)
</script>
