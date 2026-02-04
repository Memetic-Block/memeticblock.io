/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly VITE_FORM_API_URL: string
  readonly VITE_SHOW_CONTACT_FORM?: string
}

interface ImportMeta {
  readonly env: ImportMetaEnv
}

declare module '*.vue' {
  import type { DefineComponent } from 'vue'
  const component: DefineComponent
  export default component
}
