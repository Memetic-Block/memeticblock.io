<template>
  <footer class="w-full py-8 px-4 md:px-8 mt-16 border-t border-white/20">
    <div class="max-w-6xl mx-auto">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- Brand -->
        <div>
          <p class="font-bold text-lg mb-2">MEMETIC BLOCK</p>
          <p class="text-gray-text text-sm">
            A Software Guild focused on building distributed systems of value.
          </p>
        </div>

        <!-- Links -->
        <div>
          <p class="font-bold mb-2">Links</p>
          <ul class="list-none m-0 p-0 space-y-2">
            <li>
              <NuxtLink href="/" class="text-gray-text hover:text-white no-underline transition-colors">
                Home
              </NuxtLink>
            </li>
            <li>
              <NuxtLink href="/about" class="text-gray-text hover:text-white no-underline transition-colors">
                About
              </NuxtLink>
            </li>
            <li>
              <NuxtLink href="/contact" class="text-gray-text hover:text-white no-underline transition-colors">
                Contact
              </NuxtLink>
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
                Twitter/X
              </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- Copyright -->
      <div class="mt-8 pt-4 border-t border-white/10 text-center text-gray-text text-sm">
        <p class="m-0">&copy; {{ currentYear }} Memetic Block. All rights reserved.</p>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
const currentYear = new Date().getFullYear()
</script>
