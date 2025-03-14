<script setup lang="ts">
// import {
//   BoxGeometry,
//   Mesh,
//   MeshBasicMaterial,
//   PerspectiveCamera,
//   Scene,
//   WebGLRenderer
// } from 'three'
// import { useRenderLoop } from '@tresjs/core'

// const canvas = ref<HTMLCanvasElement>()
// // const windowWidth = ref(window.innerWidth)
// // const windowHeight = ref(window.innerHeight)
// // const aspect = ref(windowWidth.value / windowHeight.value)

// onMounted(() => {
//   // Create the scene
//   const scene = new Scene();

//   // Create a camera, which determines what we'll see when we render the scene
//   // const camera = new PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
//   const camera = new PerspectiveCamera()
//   camera.position.z = 5;

//   // Create a renderer and attach it to our document
//   const renderer = new WebGLRenderer({ canvas: canvas.value });
//   renderer.setSize(window.innerWidth, window.innerHeight);
//   // document.body.appendChild(renderer.domElement);

//   // Create the geometry for the letter M
//   const geometry = new BoxGeometry(1, 1, 1);
//   const material = new MeshBasicMaterial({ color: 0x00ff00 });
//   const letterM = new Mesh(geometry, material);

//   // Position the cubes to form the letter M
//   const leftLeg = letterM.clone();
//   leftLeg.position.set(-1.5, 0, 0);

//   const middleLeft = letterM.clone();
//   middleLeft.position.set(-0.5, 1, 0);

//   const middleRight = letterM.clone();
//   middleRight.position.set(0.5, 1, 0);

//   const rightLeg = letterM.clone();
//   rightLeg.position.set(1.5, 0, 0);

//   // Add the cubes to the scene
//   scene.add(leftLeg);
//   scene.add(middleLeft);
//   scene.add(middleRight);
//   scene.add(rightLeg);

//   // const { onLoop } = useRenderLoop()
//   // onLoop(({ delta, elapsed }) => {
//   //   leftLeg.rotation.x += 0.01;
//   //   leftLeg.rotation.y += 0.01;
//   //   middleLeft.rotation.x += 0.01;
//   //   middleLeft.rotation.y += 0.01;
//   //   middleRight.rotation.x += 0.01;
//   //   middleRight.rotation.y += 0.01;
//   //   rightLeg.rotation.x += 0.01;
//   //   rightLeg.rotation.y += 0.01;
//   //   renderer.render(scene, camera)
//   // })

//   function animate() {
//     requestAnimationFrame(animate);

//     leftLeg.rotation.x += 0.01;
//     leftLeg.rotation.y += 0.01;
//     middleLeft.rotation.x += 0.01;
//     middleLeft.rotation.y += 0.01;
//     middleRight.rotation.x += 0.01;
//     middleRight.rotation.y += 0.01;
//     rightLeg.rotation.x += 0.01;
//     rightLeg.rotation.y += 0.01;

//     renderer.render(scene, camera);
//   }

//   animate()
// })
</script>

<template>
  <!-- <canvas ref="canvas" style="width: 100%; height:100%;" />
  <TresCanvas
    window-size
    clear-color="#ffffff"
    ref="canvas"
  >
    <TresPerspectiveCamera :position="[0, 0, 5]" />
  </TresCanvas> -->
</template>
