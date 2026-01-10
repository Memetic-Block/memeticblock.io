<template>
  <p id="projects">
    <span class="font-weight-black">MEMETIC BLOCK</span> is a
    <span class="font-italic">Software Guild</span> focused on building
    distributed systems of value and
    realizing creativity in the spaces
    between them.
  </p>
  <p>
    We believe that software is willpower automated.
  </p>
  <p>
    We are currently <span class="text-success">OPEN</span> to new projects ->
    <a class="underline" href="mailto:build@memeticblock.com" target="_blank"
      >build@memeticblock.com</a
    >
  </p>
  <hr />
  <div v-if="mobile" id="projects-display">
    <ul class="tree">
      <li>
        <p style="margin: 0;">
          <strong>Projects</strong>
        </p>
        <ul class="incremental">
          <li v-for="project in projects" :key="project.name">
            {{ project.name }}<sup v-if="project.sup">{{ project.sup }}</sup>
            <ul class="incremental">
              <li>{{ project.type }}</li>
              <li>
                <span :class="`text-${project.statusColor || 'success'}`">
                  {{ project.status }}
                </span>
              </li>
              <li v-for="info in project.info" :key="info">
                <span v-html="info"></span>
              </li>
              <li>
                <a v-if="project.url" class="underline" :href="project.url" target="_blank">
                  {{ project.linkText }}
                </a>
                <span v-else>{{ project.linkText }}</span>
              </li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
    <div class="font-italic" style="font-size: 12px">
      <sup>*</sup>
      Project owned by a third party with Engineering Consulting Services
      provided by Memetic Block.
    </div>
  </div>
  <table v-else id="projects-display">
    <thead>
      <tr>
        <th class="width-min">Project</th>
        <th class="width-min">Type</th>
        <th class="width-min">Status</th>
        <th class="width-auto">Information</th>
        <th class="width-min">Link</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="project in projects" :key="project.name">
        <td>
          {{ project.name }}<sup v-if="project.sup">{{ project.sup }}</sup>
        </td>
        <td>{{ project.type }}</td>
        <td :class="`text-${project.statusColor || 'success'}`">
          {{ project.status }}
        </td>
        <td>
          <template v-for="info in project.info" :key="info"> 
            <span v-html="info"></span><br />
          </template>
        </td>
        <td>
          <a v-if="project.url" class="underline" :href="project.url" target="_blank">
            {{ project.linkText }}
          </a>
          <span v-else>{{ project.linkText }}</span>
        </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="5" style="font-size: 12px">
          <sup>*</sup>
          Project owned by a third party with Engineering Consulting Services
          provided by Memetic Block.
        </td>
      </tr>
    </tfoot>
  </table>
  <p>
    For code, please see
    <a class="underline" href="https://github.com/memetic-block" target="_blank">github.com/memetic-block</a>
    or
    <a class="underline" href="https://github.com/art-by-city" target="_blank">github.com/art-by-city</a>
  </p>
  <hr />
  <p>Moral Obligatories</p>
  <ul>
    <li>
      <a class="underline" href="https://berkeleymono.com" target="_blank">Berkeley Mono</a> font
      by
      <a class="underline" href="https://usgraphics.com/" target="_blank">
        U.S. Graphics Company
      </a>
    </li>
  </ul>
</template>

<script setup lang="ts">
import { useDisplay } from 'vuetify'

const { mobile } = useDisplay()

const projects = [
  {
    name: 'Anyone Protocol',
    type: 'DePIN VPN Network',
    status: 'Live',
    url: 'https://anyone.io',
    linkText: 'anyone.io',
    sup: '*',
    info: ['6,000+ relays registered.']
  },
  {
    name: 'Wuzzy Search',
    type: 'Permaweb Search Engine',
    status: 'Live Alpha',
    url: 'https://wuzzy.io',
    linkText: 'wuzzy.io',
    info: [
      'Premiere Permaweb Search Engine',
      'Agents of AO Hackathon Winner 2025'
    ]
  },
  {
    name: 'Frostor',
    type: 'Arweave Gateway',
    status: 'Live',
    url: 'https://frostor.xyz',
    linkText: 'frostor.xyz',
    info: ['200k+ $ARIO staked.', 'Top performance.']
  },
  // {
  //   name: 'Art By City',
  //   type: 'Web3 Empowered Gallery',
  //   status: 'Rendering Grass',
  //   url: 'https://artby.city',
  //   linkText: 'artby.city',
  //   info: ['40+ artists.', '10+ exhibitions.']
  // },
  {
    name: 'Art By City',
    type: 'Artist Web3 Empowerment',
    status: 'Healing',
    statusColor: 'info',
    url: 'https://artbycity.frostor.xyz',
    linkText: 'artbycity.frostor.xyz',
    info: ['60+ artists.', '40+ gigabytes of art.', '31k+ data transactions.']
  },
  // {
  //   name: 'Love4src',
  //   type: 'Arweave Gateway, ar.io',
  //   status: 'Live',
  //   url: 'https://love4src.com',
  //   linkText: 'love4src.com',
  //   info: ['100k+ $ARIO staked.', 'Top 5 perfomance.']
  // },
  // {
  //   name: 'Operation Dog wif Sunburn',
  //   type: '██████████████',
  //   status: 'Materializing 2025Q2',
  //   statusColor: 'warning',
  //   url: 'https://██████████████.net',
  //   linkText: '██████████████.net',
  //   info: ['██████████████']
  // },
  // {
  //   name: 'Project Glass Memory',
  //   type: 'Neural Radiance Fields Service',
  //   status: 'Closed Alpha',
  //   url: 'https://██████████████.net',
  //   linkText: '██████████████.net',
  //   info: ['Inquire for demo.']
  // },
  // {
  //   name: 'AO Encrypted Messages',
  //   type: 'Software Library',
  //   status: 'Published',
  //   url: 'https://www.npmjs.com/package/@memetic-block/ao-encrypted-messages',
  //   linkText: 'npm',
  //   info: ['Encrypted Voicemail on Arweave.']
  // },
  // {
  //   // name: '@memetic-block/ans-104',
  //   name: 'Project Hank Hill\'s Ass',
  //   type: 'Software Library',
  //   status: 'Finalizing 2025Q2',
  //   statusColor: 'warning',
  //   // url: 'https://www.npmjs.com/package/@memetic-block/ans-104',
  //   linkText: 'npm',
  //   info: ['Lean and mean.', 'Coming soon.', 'Dang it, Bobby.']
  // },
  // {
  //   name: 'Operation Bird Brain',
  //   type: '██████████████',
  //   status: 'PAUSED',
  //   statusColor: 'info',
  //   url: 'https://██████████████.net',
  //   linkText: '██████████████.net',
  //   info: ['100k+ epochs of neural violence.']
  // }
]
</script>
