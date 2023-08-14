import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'

let theme = 'dark'
const localStorageTheme = localStorage && localStorage.getItem('theme')
if (localStorageTheme) {
  theme = localStorageTheme
}

export default defineNuxtPlugin(nuxtApp => {
  const vuetify = createVuetify({
    ssr: true,
    components,
    directives,
    theme: {
      defaultTheme: theme,
      themes: {
        dark: {
            colors: {
              primary: '#C82323',
              secondary: '#df2626',
              background: '#222222',
            }
        },
        light: {
          colors: {
            primary: '#C82323',
            secondary: '#df2626',
            accent: '#000000',
            background: '#FFFFFF',
            surface: '#FFFFFF',
            error: '#FF5252',
            info: '#2196F3',
            success: '#4CAF50',
            warning: '#FFC107',
          }
        }
      }
    }
  })

  nuxtApp.vueApp.use(vuetify)
})
