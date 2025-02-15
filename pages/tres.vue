<script setup lang="ts">
import { TresCanvas, useTexture, useRenderLoop } from '@tresjs/core'
import { Html, OrbitControls } from '@tresjs/cientos'
import { Mesh } from 'three'

const texture = await useTexture({
  map: '/logo/memetic-block/memetic-block.png'
})

const { onLoop } = useRenderLoop()
const cube = ref<Mesh>()
onLoop(({ delta, elapsed }) => {
  if (cube.value) {
    // cube.value.rotation.y += delta
    // cube.value.rotation.z = elapsed * 0.1
    // cube.value.rotation.x += delta
    cube.value.rotation.y += delta
    // cube.value.rotation.z += delta
    // cube.value.rotation.
  }
})
</script>

<template>
  <TresCanvas
    window-size
    clear-color="#222222"
  >
    <TresPerspectiveCamera :position="[0, 0, 5]" />
    <TresDirectionalLight :position="[0, 5, 10]" color="#ffffff" />
    <!-- <OrbitControls /> -->

    <TresMesh :position="[0, 0, -1]">
      <TresPlaneGeometry :args="[2.5, 2.5]" />
      <TresMeshBasicMaterial :map="texture.map" />
      <!-- <Html
        center
        transform
        :distance-factor="1"
        :position="[0, 0, 0.1]"
        :scale="[0.75, 0.75, 0.75]"
      >
        <iframe frameborder="0" src="/logo/memetic-block/memetic-block.png"></iframe>
      </Html> -->
    </TresMesh>

    <TresMesh
      ref="cube"
      :position="[0, 0, 0]"
      :rotation="[Math.PI/3, Math.PI / 4, 0]"
      cast-shadow
    >
      <TresBoxGeometry :args="[3, 3, 3]"/>
      <TresMeshPhysicalMaterial
        color="#ffffff"
        transmission="1"
        roughness="0.1"
        thickness="1"
      />
    </TresMesh>    
  </TresCanvas>
</template>

<style>
html,
body {
  margin: 0;
  padding: 0;
  height: 100%;
  width: 100%;
}
#app {
  height: 100%;
  width: 100%;
  background-color: #000;
}
</style>
