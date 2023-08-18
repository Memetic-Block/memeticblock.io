<template>
    <LandingHero />
    <ProjectsHero />
    <div class="down-arrow" v-show="showDownArrow">
        <DownArrow />
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onBeforeUnmount } from 'vue'

const showDownArrow = ref(true)
let scrollTimeout: number

const handleScroll = () => {
    if (window.scrollY === 0) {
        clearTimeout(scrollTimeout)
        showDownArrow.value = true
    } else if (showDownArrow.value === true) {
        clearTimeout(scrollTimeout)
        scrollTimeout = setTimeout(() => {
            showDownArrow.value = false
        }, 1000)
    }
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onBeforeUnmount(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>
