<template>
  <main>
    <section> 
      <h1 class="text-center pt-12">Memetic Block - Contact Us</h1>
      <ClientOnly>
        <iframe
          data-w-type="embedded"
          frameborder="0"
          scrolling="no"
          marginheight="0"
          marginwidth="0"
          src="https://syxro.mjt.lu/wgt/syxro/0sq8/form?c=6a5f0e82"
          width="100%"
          :style="{ height: showLoadingMessage ? '0' : '556px' }"
          @load="onContactFormLoaded"
        ></iframe>
        <h3 v-show="showLoadingMessage" class="text-center">
          Fetching Contact Form...
        </h3>
      </ClientOnly>
    </section>
  </main>
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
