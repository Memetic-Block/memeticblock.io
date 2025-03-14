// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: false },
  ssr: true,

  app: {
    baseURL: '/',
    head: {
      title: 'Memetic Block',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        {
          name: 'Description',
          content: 'MEMETIC BLOCK is a Software Guild focused on building distributed systems of value and realizing creativity in the spaces between them.'
        }
      ],
      link: [
        {
          rel: 'icon',
          type: 'image/png',
          href: '/logo/memetic-block/memetic-block-favicon.png'
        },
        {
          rel: 'preload',
          href: '/fonts/Fontspring-DEMO-proximanova-light.otf'
        },
        {
          rel: 'preload',
          href: '/fonts/Fontspring-DEMO-proximanova-bold.otf'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-Bold.woff'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-Bold.woff2'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-BoldItalic.woff'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-BoldItalic.woff2'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-Italic.woff'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-Italic.woff2'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-Regular.woff'
        },
        {
          rel: 'preload',
          href: '/fonts/BerkeleyMono-Regular.woff2'
        },
      ]
    }
  },

  experimental: {
    writeEarlyHints: false
  },

  /**
   * Vuetify Config
   * See https://codybontecou.com/how-to-use-vuetify-with-nuxt-3.html
   * See https://pictogrammers.github.io/@mdi/font/7.1.96/
   */
  css: [
    'vuetify/lib/styles/main.sass',
    '@mdi/font/css/materialdesignicons.min.css'
  ],

  build: {
    transpile: ['vuetify']
  },

  vite: {
    define: {
      'process.env.DEBUG': false
    },
  },

  /**
   * Vue Router Config
   */
  pages: true,

  modules: [],
  compatibilityDate: '2025-02-14'
})