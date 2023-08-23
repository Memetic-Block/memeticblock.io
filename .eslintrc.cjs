module.exports = {
  root: true,
  overrides: [{
    files: [ './**/*.{ts,vue}' ]
  }],
  env: {
    browser: true
  },
  // parser: '@typescript-eslint/parser',
  // parserOptions: {
  //   project: true,
  //   tsconfigRootDir: __dirname,
  //   extraFileExtensions: [ '.vue' ]
  // },
  parser: 'vue-eslint-parser',
  parserOptions: {
    parser: "@typescript-eslint/parser",
    sourceType: 'module',
    // project: true,
    // tsconfigRootDir: __dirname,
    vueFeatures: {
      interpolationAsNonHTML: false
    }
  },
  plugins: [ '@typescript-eslint' ],
  extends: [
    // 'eslint:recommended',
    // 'plugin:vue/base',
    'plugin:vue/vue3-recommended',
    // 'plugin:@typescript-eslint/recommended'
    // 'plugin:@typescript-eslint/recommended-type-checked',
  ],
  rules: {
    'vue/multi-word-component-names': 'off',
    'vue/component-tags-order': 'off',
    'vue/max-attributes-per-line': ['warn', {
      singleline: { max: 12 },
      multiline: { max: 1 }
    }],
    'vue/block-order': ['warn', {
      order: [ 'template', 'style', 'script' ]
    }]
  }
}
