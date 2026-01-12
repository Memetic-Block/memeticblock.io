<template>
  <v-app class="app">
    <v-main class="app-main min-h-screen">
      <SiteHeader />
      <main class="container-page py-8">
        <slot />
      </main>
      <SiteFooter />
    </v-main>
  </v-app>
</template>

<style>
@import "@/assets/styles/main.css";
</style>
