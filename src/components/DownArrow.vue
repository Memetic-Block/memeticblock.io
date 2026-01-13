<template>
  <div class="down-arrow" @click="onScrollClicked">
    <svg
      width="32"
      height="20"
      viewBox="0 0 32 20"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        fill="white"
        d="
          M16 19.1938C15.425 19.1938 14.8438 18.975 14.4063
          18.5313L0.537524 4.66255C-0.343726 3.7813 -0.343726
          2.35005 0.537524 1.4688C1.41877 0.587549 2.85002 0.587549
          3.73127 1.4688L16 13.7375L28.2688 1.4688C29.15 0.587549
          30.5813 0.587549 31.4625 1.4688C32.3438 2.35005 32.3438
          3.7813 31.4625 4.66255L17.5938 18.5313C17.1563 18.9688
          16.575 19.1938 16 19.1938Z
        "
      />
    </svg>
  </div>
</template>

<style scoped>
.down-arrow {
  width: 100%;
  display: flex;
  justify-content: center;
  margin-bottom: 15px;
  cursor: pointer;
}
</style>

<script setup lang="ts">
const props = defineProps<{
  scrollTo?: string
}>()

const onScrollClicked = () => {
  if (props.scrollTo) {
    const element = document.getElementById(props.scrollTo)
    if (element) {
      element.scrollIntoView({ behavior: 'smooth' })
    }
  }
}
</script>
