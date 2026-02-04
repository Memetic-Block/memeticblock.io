import { ViteSSG } from 'vite-ssg'
import App from './App.vue'
import type { RouteRecordRaw } from 'vue-router'

import './assets/css/tailwind.css'

// Mock window.scrollTo during SSG to suppress jsdom "Not implemented" warnings
if (import.meta.env.SSR && typeof window !== 'undefined') {
  window.scrollTo = (() => {}) as typeof window.scrollTo
}

// Import page components
import Home from './views/index.vue'
import About from './views/about.vue'
import Contact from './views/contact.vue'
import CaseStudies from './views/case-studies/index.vue'
import CaseStudyAnyoneProtocol from './views/case-studies/anyone-protocol.vue'

const routes: RouteRecordRaw[] = [
  { path: '/', name: 'Home', component: Home },
  { path: '/about', name: 'About', component: About },
  { path: '/contact', name: 'Contact', component: Contact },
  { path: '/case-studies', name: 'CaseStudies', component: CaseStudies },
  { path: '/case-studies/anyone-protocol', name: 'CaseStudyAnyoneProtocol', component: CaseStudyAnyoneProtocol },
]

export const createApp = ViteSSG(App, {
  routes,
  scrollBehavior(to, from, savedPosition) {
    if (to.hash) {
      return {
        el: to.hash,
        behavior: 'smooth',
      }
    }
    if (savedPosition) {
      return savedPosition
    }
    return { top: 0 }
  },
})
