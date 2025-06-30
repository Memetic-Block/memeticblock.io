<template>
  <v-app class="app">
    <v-main class="app-main">
      <SiteHeader />
      <slot />
    </v-main>
  </v-app>
</template>

<style>
@import "@/assets/styles/monospace-web/reset.css";
@import "@/assets/styles/monospace-web/index.css";
@import "@/assets/styles/main.css";
</style>
