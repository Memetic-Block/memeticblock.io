import { ViteSSG } from 'vite-ssg'
import App from './App.vue'
import type { RouteRecordRaw } from 'vue-router'

import './assets/css/tailwind.css'

// Import page components
import Home from './views/index.vue'
import About from './views/about.vue'
import Contact from './views/contact.vue'

const routes: RouteRecordRaw[] = [
  { path: '/', name: 'Home', component: Home },
  { path: '/about', name: 'About', component: About },
  { path: '/contact', name: 'Contact', component: Contact },
]

export const createApp = ViteSSG(
  App,
  { routes },
  ({ app, router, isClient }) => {
    // Global hooks or plugins can be registered here
  }
)
