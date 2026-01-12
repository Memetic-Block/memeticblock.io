<template>
  <div class="py-8">
    <section class="text-center mb-12">
      <h1 class="text-3xl md:text-4xl font-bold mb-4">Contact Us</h1>
      <p class="text-gray-text mb-8">Ready to start your project? Get in touch with us.</p>
    </section>
    
    <section class="max-w-2xl mx-auto">
      <ClientOnly>
        <iframe
          data-w-type="embedded"
          frameborder="0"
          scrolling="no"
          marginheight="0"
          marginwidth="0"
          src="https://syxro.mjt.lu/wgt/syxro/0sq8/form?c=6a5f0e82"
          width="100%"
          class="w-full"
          :style="{ height: showLoadingMessage ? '0' : '556px' }"
          @load="onContactFormLoaded"
        ></iframe>
        <p v-show="showLoadingMessage" class="text-center text-gray-text">
          Loading contact form...
        </p>
      </ClientOnly>
    </section>
    
    <section class="text-center mt-12 pt-8 border-t border-white/20">
      <p class="mb-4">Or reach out directly:</p>
      <p class="text-lg">
        <a class="underline hover:text-primary transition-colors" href="mailto:build@memeticblock.com">
          build@memeticblock.com
        </a>
      </p>
    </section>
  </div>
</template>

<script setup lang="ts">
const showLoadingMessage = ref<boolean>(true)
const onContactFormLoaded = () => {
  showLoadingMessage.value = false
}

useHead({
  meta: [
    { property: "og:title", content: "Contact Us | Memetic Block" },
    {
      name: "description",
      content: "Contact Memetic Block for custom blockchain and decentralized software solutions."
    },
    { name: "twitter:title", content: "Contact Us | Memetic Block" },
    {
      name: "twitter:description",
      content: "Contact Memetic Block for custom blockchain and decentralized software solutions."
    },
    { property: "og:type", content: "website" },
    { name: "keywords", content: "blockchain development, smart contract development, decentralized applications, Web3, DePIN" }
  ],
  title: 'Contact Us | Memetic Block',
  script: [
    {
      src: 'https://app.mailjet.com/pas-nc-embedded-v1.js',
      type: 'text/javascript'
    }
  ]
})
</script>
