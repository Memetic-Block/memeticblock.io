<script setup lang="ts">
import { TresCanvas, useRenderLoop, useLoader } from '@tresjs/core'
import { Html, OrbitControls } from '@tresjs/cientos'
import { Mesh, TextureLoader, Texture, SRGBColorSpace, MathUtils } from 'three'

const logoTexture: Texture = (await useLoader(TextureLoader as any, '/logo/memetic-block/memetic-block-black.png')) as Texture
logoTexture.colorSpace = SRGBColorSpace

const sideTexture: Texture = (await useLoader(TextureLoader as any, '/logo/memetic-block/mbside1.png')) as Texture
sideTexture.colorSpace = SRGBColorSpace
const sideTexture2: Texture = (await useLoader(TextureLoader as any, '/logo/memetic-block/mbside2.png')) as Texture
sideTexture2.colorSpace = SRGBColorSpace
// sideTexture.rotation = MathUtils.degToRad(90)
// sideTexture.offset.x = -0.5
// sideTexture.sc
// const fitScaleX = 2 / sideTexture.image.width;
// const fitScaleY = 2 / sideTexture.image.height;
// const fitCoverScale = Math.max(fitScaleX,fitScaleY);
// console.log('fitCoverScale', fitCoverScale)
// const repeatX = 1 / fitCoverScale;
// const repeatY = 1 / fitCoverScale;
// console.log('repeat', repeatX, repeatY)
// sideTexture.repeat.set(1, 1);

// sideTexture.center.set( sideTexture.image.width / 2, sideTexture.image.height / 2 );
// sideTexture.offset.set( sideTexture.image.width / 2, sideTexture.image.height / 2 );

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
  // if (currentCam.value === 'cam2') { currentCam.value = 'cam1' }
  // else { currentCam.value = 'cam2' }
}

const windowWidth = ref(window.innerWidth)
const windowHeight = ref(window.innerHeight)
const aspect = ref(windowWidth.value / windowHeight.value)
const canvas = ref<HTMLCanvasElement>()
</script>

<template>
  <div
    style="width: 100%; height: 100%"
    @click="toggleCamera"
  >
    <TresCanvas
      window-size
      clear-color="#ffffff"
      ref="canvas"
    >
      <!-- <TresPerspectiveCamera :position="[0, 0, 5]" :rotation="cameraRotation" /> -->
      <TresOrthographicCamera
        :left="-0.5 * windowWidth * aspect / 2"
        :right="0.5 * windowWidth * aspect / 2"
        :top="windowHeight / 2"
        :bottom="-windowHeight / 2"
        :position="[0, 0, 100]"
      />
      <!-- <TresDirectionalLight :position="[0, 5, 10]" color="#ffffff" /> -->
      <OrbitControls />

      
      <!-- <TresMesh :position="[0, 0, -1]">
        <TresPlaneGeometry :args="[2.5, 2.5]" />
        <TresMeshBasicMaterial :map="logoTexture"  />
      </TresMesh> -->

      <!-- <TresMesh
        ref="cube"
        :position="[0, 0, 0]"
        :rotation="[MathUtils.degToRad(45), MathUtils.degToRad(45), 0]"
        cast-shadow
      >
        <TresBoxGeometry :args="[90, 90, 90]" />
        <TresMeshPhysicalMaterial
          color="#660000"
          attach="material-0"
          :transmission="1"
          :roughness="0"
          :thickness="1"
        />
        <TresMeshPhysicalMaterial
          color="#ffffff"
          attach="material-1"
          :transmission="1"
          :roughness="1"
          :thickness="1"
          :map="sideTexture"
        />
        <TresMeshPhysicalMaterial
          color="#ffffff"
          attach="material-2"
          :transmission="1"
          :roughness="1"
          :thickness="1"
        />
        <TresMeshPhysicalMaterial
          color="#00ff00"
          attach="material-3"
          :transmission="1"
          :roughness="0"
          :thickness="1"
        />
        <TresMeshPhysicalMaterial
          color="#ffffff"
          attach="material-4"
          :transmission="1"
          :roughness="1"
          :thickness="1"
          :map="sideTexture2"
        />
        <TresMeshPhysicalMaterial
          color="#0000ff"
          attach="material-5"
          :transmission="1"
          :roughness="0"
          :thickness="1"
        />
      </TresMesh> -->
    </TresCanvas>
  </div>
</template>
