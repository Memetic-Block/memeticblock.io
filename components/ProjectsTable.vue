<template>
  <p id="projects">
    <span class="font-weight-black">MEMETIC BLOCK</span> is a
    <span class="font-italic">Software Guild</span> focused on building
    distributed systems and realizing creativity in the spaces between them.
  </p>
  <p>
    We believe that software is willpower automated.
  </p>
  <p>
    We are currently <span class="text-success">OPEN</span> to new projects ->
    <a href="https://x.com/memeticblock" target="_blank">x.com/memeticblock</a>
  </p>
  <hr />
  <table>
    <thead>
      <tr>
        <th class="width-auto">Project</th>
        <th class="width-min">Type</th>
        <th class="width-min">Status</th>
        <th class="width-min">Link</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="project in projects" :key="project.name">
        <td>{{ project.name }}</td>
        <td>{{ project.type }}</td>
        <td :class="`text-${project.statusColor || 'success'}`">
          {{ project.status }}
        </td>
        <td>
          <a v-if="project.url" :href="project.url" target="_blank">
            {{ project.linkText }}
          </a>
          <span v-else>{{ project.linkText }}</span>
        </td>
      </tr>
    </tbody>
  </table>
  <p>
    <a href="https://github.com/memetic-block" target="_blank">
      github.com/memetic-block
    </a>
  </p>
  <hr />
  <p>Moral Obligatories</p>
  <ul>
    <li>
      <a href="https://berkeleymono.com" target="_blank">Berkeley Mono</a> font
      by <a href="https://usgraphics.com/">U.S. Graphics Company</a>
    </li>
    <li>
      Design stylesheets & inspiration from
      <a href="https://owickstrom.github.io/the-monospace-web">The Monospace Web</a>
      by <a href="https://wickstrom.tech/">Oskar Wickström</a>
    </li>
  </ul>
</template>

<script setup lang="ts">
const projects = [
  {
    name: 'Anyone Protocol',
    type: 'DePIN VPN Network',
    status: 'Testnet',
    url: 'https://anyone.io',
    linkText: 'anyone.io'
  },
  {
    name: 'Art By City',
    type: 'Web3 Empowered Gallery',
    status: 'Rendering Grass',
    url: 'https://artby.city',
    linkText: 'artby.city'
  },
  {
    name: 'Art By City Digital',
    type: 'Artist Web3 Empowerment',
    status: 'Healing',
    statusColor: 'info',
    url: 'https://artby.city',
    linkText: 'artby.city'
  },
  {
    name: 'Frostor',
    type: 'Arweave Gateway, ar.io',
    status: 'Live',
    url: 'https://frostor.xyz',
    linkText: 'frostor.xyz'
  },
  {
    name: 'Love4src',
    type: 'Arweave Gateway, ar.io',
    status: 'Live',
    url: 'https://love4src.com',
    linkText: 'love4src.com'
  },
  {
    name: 'Operation Dog wif Sunburn',
    type: '██████████████',
    status: 'Materializing 2025Q2',
    statusColor: 'warning',
    url: 'https://██████████████.net',
    linkText: '██████████████.net'
  },
  {
    name: 'Project Glass Memory',
    type: 'Neural Radiance Fields Service',
    status: 'Closed Alpha',
    url: 'https://██████████████.net',
    linkText: '██████████████.net'
  },
  {
    name: 'AO Encrypted Messages',
    type: 'Software Library',
    status: 'Published',
    url: 'https://www.npmjs.com/package/@memetic-block/ao-encrypted-messages',
    linkText: 'npm'
  },
  {
    // name: '@memetic-block/ans-104',
    name: 'Project Hank Hill\'s Ass',
    type: 'Software Library',
    status: 'Finalizing 2025Q2',
    statusColor: 'warning',
    // url: 'https://www.npmjs.com/package/@memetic-block/ans-104',
    linkText: 'npm',
  },
  {
    name: 'Operation Bird Brain',
    type: '██████████████',
    status: 'PAUSED',
    statusColor: 'info',
    url: 'https://██████████████.net',
    linkText: '██████████████.net'
  }
]
</script>
