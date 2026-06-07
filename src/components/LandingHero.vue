<template>
  <div id="landing-hero" class="w-full min-h-[60vh] md:min-h-[80vh] flex items-center justify-center bg-background">
    <div class="flex flex-col items-center text-center px-4">
      <MemeticBlockLogo class="w-32 h-32 md:w-48 md:h-48" />
      <div class="mt-4">
        <LogoText />
      </div>
      <p class="mt-6 max-w-2xl text-gray-text text-base md:text-lg leading-relaxed">
        A software guild combining senior engineers with agentic coding teams under deliberate
        human-in-the-loop oversight — delivering enterprise-grade distributed systems.
      </p>
    </div>
  </div>
</template>

<script setup lang="ts">
import MemeticBlockLogo from './MemeticBlockLogo.vue'
import LogoText from './LogoText.vue'
</script>
