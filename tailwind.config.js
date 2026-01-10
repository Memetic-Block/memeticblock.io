/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './components/**/*.{js,vue,ts}',
    './layouts/**/*.vue',
    './pages/**/*.vue',
    './plugins/**/*.{js,ts}',
    './app.vue',
    './error.vue',
  ],
  theme: {
    extend: {
      fontFamily: {
        mono: ['"Berkeley Mono"', 'monospace'],
        sans: ['"Berkeley Mono"', 'monospace'],
      },
      colors: {
        primary: '#C82323',
        secondary: '#df2626',
        'gray-text': '#999999',
        surface: '#333333',
        background: '#222222',
        'chalk-background': '#E1E1E1',
        'off-white': '#F8F8F8',
        error: '#FF5252',
        info: '#2196F3',
        success: '#4CAF50',
        warning: '#FFC107',
      },
      spacing: {
        '18': '4.5rem',
        '22': '5.5rem',
      },
    },
  },
  plugins: [],
}
