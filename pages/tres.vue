<script setup lang="ts">
import { TresCanvas, useTexture, useRenderLoop, useLoader } from '@tresjs/core'
import { Html, OrbitControls } from '@tresjs/cientos'
import { Mesh, TextureLoader, Texture, SRGBColorSpace } from 'three'
import { SVGLoader, type SVGResult } from 'three/addons/loaders/SVGLoader.js'


const texture: Texture = (await useLoader(TextureLoader as any, '/logo/memetic-block/memetic-block-black.png')) as Texture
texture.colorSpace = SRGBColorSpace

const { onLoop } = useRenderLoop()
const cube = ref<Mesh>()
onLoop(({ delta, elapsed }) => {
  if (cube.value) {
    // cube.value.rotation.y += delta
  }
})
const cam1 = [0, 0, 0] as any
const cam2 = [Math.PI/4, 0, 0] as any
let currentCam = ref('cam1')
let cameraRotation = computed(() => { if (currentCam.value === 'cam1') { return cam1 } else { return cam2 } })

function toggleCamera() {
  console.log('toggleCamera')
  if (currentCam.value === 'cam2') { currentCam.value = 'cam1' }
  else { currentCam.value = 'cam2' }
}
</script>

<template>
  <div
    style="width: 100%; height: 100%"
    @click="toggleCamera"
  >
    <TresCanvas
      window-size
      clear-color="#000000"
    >
      <TresPerspectiveCamera :position="[0, 0, 5]" :rotation="cameraRotation" />
      <!-- <TresDirectionalLight :position="[0, 5, 10]" color="#ffffff" /> -->
      <OrbitControls />

      <TresMesh :position="[0, 0, -1]">
        <TresPlaneGeometry :args="[2.5, 2.5]" />
        <!-- <TresMeshBasicMaterial :map="texture.map" /> -->
        <TresMeshBasicMaterial :map="texture"  />

      </TresMesh>

      <TresMesh
        ref="cube"
        :position="[0, 0, 0]"
        :rotation="[Math.PI/2.5, Math.PI / 4, 0]"
        cast-shadow
      >
        <TresBoxGeometry :args="[3, 3, 3]" />
        <TresMeshPhysicalMaterial
          color="#ffffff"
          :transmission="1"
          :roughness="0"
          :thickness="1"
        />
      </TresMesh>
    </TresCanvas>
  </div>
</template>
