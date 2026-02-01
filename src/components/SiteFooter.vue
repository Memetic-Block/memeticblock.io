<template>
  <footer class="w-full py-8 px-4 md:px-8 mt-16 border-t border-white/20">
    <div class="max-w-6xl mx-auto">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- Brand -->
        <div>
          <div class="flex items-center gap-3 mb-2">
            <MemeticBlockLogo class="w-7 h-7" />
            <p class="font-bold text-lg m-0">
              <span class="font-bold">MEMETIC</span> <span class="font-normal">BLOCK</span>
            </p>
          </div>
          <p class="text-gray-text text-sm">
            A Software Guild focused on building distributed systems of value.
          </p>
        </div>

        <!-- Links -->
        <div>
          <p class="font-bold mb-2">Links</p>
          <ul class="list-none m-0 p-0 space-y-2">
            <li>
              <RouterLink to="/" class="text-gray-text hover:text-white no-underline transition-colors">
                Home
              </RouterLink>
            </li>
            <li>
              <RouterLink to="/about" class="text-gray-text hover:text-white no-underline transition-colors">
                About
              </RouterLink>
            </li>
            <li>
              <RouterLink to="/contact" class="text-gray-text hover:text-white no-underline transition-colors">
                Contact
              </RouterLink>
            </li>
          </ul>
        </div>

        <!-- Contact -->
        <div>
          <p class="font-bold mb-2">Connect</p>
          <ul class="list-none m-0 p-0 space-y-2">
            <li>
              <a
                href="mailto:build@memeticblock.com"
                class="text-gray-text hover:text-white no-underline transition-colors"
              >
                build@memeticblock.com
              </a>
            </li>
            <li>
              <a
                href="https://github.com/memetic-block"
                target="_blank"
                class="text-gray-text hover:text-white no-underline transition-colors"
              >
                GitHub
              </a>
            </li>
            <li>
              <a
                href="https://x.com/memeticblock"
                target="_blank"
                class="text-gray-text hover:text-white no-underline transition-colors"
              >
                @memeticblock on X
              </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- Copyright -->
      <div class="mt-8 pt-6 border-t border-white/10 text-center text-sm text-gray-text">
        <p>&copy; {{ currentYear }} Memetic Block. All rights reserved.</p>
        <p>
          <a class="underline hover:text-primary transition-colors" href="https://berkeleymono.com" target="_blank">Berkeley Mono</a> font
          by
          <a class="underline hover:text-primary transition-colors" href="https://usgraphics.com/" target="_blank">
            U.S. Graphics Company
          </a>
        </p>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
import { computed } from 'vue'
import MemeticBlockLogo from './MemeticBlockLogo.vue'

const currentYear = computed(() => new Date().getFullYear())
</script>
