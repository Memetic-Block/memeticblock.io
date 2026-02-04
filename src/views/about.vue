<template>
  <article class="about-page" itemscope itemtype="https://schema.org/Organization">
    <!-- Hero Section -->
    <header class="relative py-16 md:py-24 text-center">
      <div class="max-w-4xl mx-auto px-4">
        <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold mb-6 leading-tight" itemprop="name">
          Building the <span class="text-primary">Decentralized</span> Future
        </h1>
        <p class="text-xl md:text-2xl text-gray-text mb-8 max-w-2xl mx-auto" itemprop="description">
          Custom blockchain solutions, Web3 applications, and DePIN infrastructure engineered for scale and security.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <RouterLink class="btn btn-primary" to="/contact"> Get a Free Consultation </RouterLink>
          <RouterLink class="btn" to="#projects"> View Our Work </RouterLink>
        </div>
      </div>
      <!-- Decorative gradient -->
      <div
        class="absolute inset-0 -z-10 bg-gradient-to-b from-primary/5 to-transparent pointer-events-none"
        aria-hidden="true"
      />
    </header>

    <!-- Who We Are -->
    <section id="who-we-are" class="pb-16 md:py-24" aria-labelledby="who-heading">
      <div class="max-w-4xl mx-auto px-4">
        <div class="grid md:grid-cols-5 gap-8 md:gap-12 items-start">
          <div class="md:col-span-2">
            <h2 id="who-heading" class="text-3xl md:text-4xl font-bold mb-4 sticky top-8">Who We Are</h2>
            <div class="hidden md:block w-16 h-1 bg-primary" />
          </div>
          <div class="md:col-span-3 space-y-6">
            <p class="text-lg leading-relaxed">
              <strong class="text-white">Memetic Block is a Software Guild</strong> founded by experienced blockchain
              developers and distributed systems architects. We're dedicated to building distributed systems that create
              value and foster creativity.
            </p>
            <p class="text-gray-text leading-relaxed">
              We believe that <em>software is willpower automated</em>. This philosophy drives our commitment to
              developing innovative blockchain solutions, decentralized applications, and Web3 infrastructure that
              empowers communities and creators across all major blockchain networks.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Services/Expertise -->
    <section id="expertise" class="py-16 md:py-24 bg-surface/30" aria-labelledby="expertise-heading">
      <div class="max-w-6xl mx-auto px-4">
        <div class="text-center mb-12 md:mb-16">
          <h2 id="expertise-heading" class="text-3xl md:text-4xl font-bold mb-4">Our Expertise</h2>
          <p class="text-gray-text max-w-2xl mx-auto">
            Full-stack blockchain development capabilities spanning the entire Web3 ecosystem
          </p>
        </div>

        <div class="grid md:grid-cols-3 gap-6 md:gap-8">
          <!-- Technologies Card -->
          <div class="group p-6 md:p-8 border border-white/20 hover:border-primary/50 transition-colors duration-300">
            <div class="w-12 h-12 mb-6 flex items-center justify-center border border-primary/50 text-primary">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
                aria-hidden="true"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"
                />
              </svg>
            </div>
            <h3 class="text-xl font-bold mb-4">Technologies & Platforms</h3>
            <ul class="space-y-3 text-gray-text text-sm">
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Multi-chain development (Ethereum, Arweave, Solana)</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>DePIN infrastructure networks</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Web3 gateways & distributed storage</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Smart contract development & auditing</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>AI integration & neural networks</span>
              </li>
            </ul>
          </div>

          <!-- Industries Card -->
          <div class="group p-6 md:p-8 border border-white/20 hover:border-primary/50 transition-colors duration-300">
            <div class="w-12 h-12 mb-6 flex items-center justify-center border border-primary/50 text-primary">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
                aria-hidden="true"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"
                />
              </svg>
            </div>
            <h3 class="text-xl font-bold mb-4">Industries We Serve</h3>
            <ul class="space-y-3 text-gray-text text-sm">
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Privacy networks & decentralized VPN</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Digital art & NFT platforms</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Blockchain gaming & metaverse</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Supply chain & IoT infrastructure</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Enterprise blockchain solutions</span>
              </li>
            </ul>
          </div>

          <!-- Capabilities Card -->
          <div class="group p-6 md:p-8 border border-white/20 hover:border-primary/50 transition-colors duration-300">
            <div class="w-12 h-12 mb-6 flex items-center justify-center border border-primary/50 text-primary">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-6 h-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
                aria-hidden="true"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                />
              </svg>
            </div>
            <h3 class="text-xl font-bold mb-4">Our Capabilities</h3>
            <ul class="space-y-3 text-gray-text text-sm">
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Full-stack dApp development</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Protocol engineering & optimization</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>DePIN architecture & deployment</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Web3 UX/UI design</span>
              </li>
              <li class="flex items-start gap-2">
                <span class="text-primary mt-1">→</span>
                <span>Technical consulting</span>
              </li>
            </ul>
          </div>
        </div>

        <!-- Mid-page CTA -->
        <div class="mt-12 md:mt-16 text-center">
          <p class="text-gray-text mb-4">Ready to leverage our expertise for your project?</p>
          <RouterLink class="btn btn-primary" to="/contact"> Schedule a Technical Consultation </RouterLink>
        </div>
      </div>
    </section>

    <!-- Featured Projects -->
    <section id="projects" class="py-16 md:py-24" aria-labelledby="projects-heading">
      <div class="max-w-6xl mx-auto px-4">
        <div class="text-center mb-12 md:mb-16">
          <h2 id="projects-heading" class="text-3xl md:text-4xl font-bold mb-4">Featured Projects</h2>
          <p class="text-gray-text max-w-2xl mx-auto">Real-world blockchain solutions delivering measurable results</p>
        </div>

        <div class="space-y-6 md:space-y-8">
          <!-- Project 1 -->
          <article
            id="anyone-protocol"
            class="group grid md:grid-cols-3 gap-6 p-6 md:p-8 border border-white/20 hover:border-primary/30 transition-colors duration-300"
          >
            <div class="md:col-span-1">
              <span
                class="inline-block px-3 py-1 text-xs font-medium bg-primary/10 text-primary border border-primary/30 mb-4"
                >DePIN</span
              >
              <h3 class="text-xl md:text-2xl font-bold mb-2">Anyone Protocol</h3>
              <p class="text-sm text-gray-text mb-3">Decentralized Privacy Network</p>
              <a
                href="https://anyone.io"
                target="_blank"
                rel="noopener noreferrer"
                class="text-sm text-white underline hover:text-primary transition-colors"
                >anyone.io →</a
              >
            </div>
            <div class="md:col-span-2 space-y-4">
              <div class="grid sm:grid-cols-3 gap-4 text-sm">
                <div>
                  <p class="text-gray-text mb-1">Challenge</p>
                  <p>Centralized VPN vulnerabilities and lack of economic incentives for network participants.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Solution</p>
                  <p>Decentralized privacy network using onion routing with tokenized rewards.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Results</p>
                  <p class="text-primary font-semibold">6,000+ registered relays on mainnet launch</p>
                </div>
              </div>
            </div>
          </article>

          <!-- Wuzzy Search -->
          <article
            id="wuzzy-search"
            class="group grid md:grid-cols-3 gap-6 p-6 md:p-8 border border-white/20 hover:border-primary/30 transition-colors duration-300"
          >
            <div class="md:col-span-1">
              <span
                class="inline-block px-3 py-1 text-xs font-medium bg-primary/10 text-primary border border-primary/30 mb-4"
                >Search</span
              >
              <h3 class="text-xl md:text-2xl font-bold mb-2">Wuzzy Search</h3>
              <p class="text-sm text-gray-text mb-3">Permaweb Search Engine</p>
              <a
                href="https://wuzzy.io"
                target="_blank"
                rel="noopener noreferrer"
                class="text-sm text-white underline hover:text-primary transition-colors"
                >wuzzy.io →</a
              >
            </div>
            <div class="md:col-span-2 space-y-4">
              <div class="grid sm:grid-cols-3 gap-4 text-sm">
                <div>
                  <p class="text-gray-text mb-1">Challenge</p>
                  <p>Discovering content on the Permaweb is difficult without centralized indexing services.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Solution</p>
                  <p>Decentralized search engine indexing permanent web content.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Results</p>
                  <p class="text-primary font-semibold">ArNS Search Engine Alpha, Agents of AO Hackathon Winner 2025</p>
                </div>
              </div>
            </div>
          </article>

          <!-- Frostor -->
          <article
            id="frostor"
            class="group grid md:grid-cols-3 gap-6 p-6 md:p-8 border border-white/20 hover:border-primary/30 transition-colors duration-300"
          >
            <div class="md:col-span-1">
              <span
                class="inline-block px-3 py-1 text-xs font-medium bg-primary/10 text-primary border border-primary/30 mb-4"
                >Infrastructure</span
              >
              <h3 class="text-xl md:text-2xl font-bold mb-2">Frostor</h3>
              <p class="text-sm text-gray-text mb-3">High-Performance Arweave Gateways</p>
              <a
                href="https://frostor.xyz"
                target="_blank"
                rel="noopener noreferrer"
                class="text-sm text-white underline hover:text-primary transition-colors"
                >frostor.xyz →</a
              >
            </div>
            <div class="md:col-span-2 space-y-4">
              <div class="grid sm:grid-cols-3 gap-4 text-sm">
                <div>
                  <p class="text-gray-text mb-1">Challenge</p>
                  <p>Web3 & the Permaweb need reliable, fast gateways while maintaining decentralization.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Solution</p>
                  <p>AR.IO gateways optimized for enterprise-grade performance.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Results</p>
                  <p class="text-primary font-semibold">Top 5 gateway performance rankings</p>
                </div>
              </div>
            </div>
          </article>

          <!-- Art By City -->
          <article
            id="art-by-city"
            class="group grid md:grid-cols-3 gap-6 p-6 md:p-8 border border-white/20 hover:border-primary/30 transition-colors duration-300"
          >
            <div class="md:col-span-1">
              <span
                class="inline-block px-3 py-1 text-xs font-medium bg-primary/10 text-primary border border-primary/30 mb-4"
                >Web3</span
              >
              <h3 class="text-xl md:text-2xl font-bold mb-2">Art By City</h3>
              <p class="text-sm text-gray-text mb-3">Artist Empowerment Platform</p>
              <a
                href="https://artbycity.frostor.xyz"
                target="_blank"
                rel="noopener noreferrer"
                class="text-sm text-white underline hover:text-primary transition-colors"
                >artbycity →</a
              >
            </div>
            <div class="md:col-span-2 space-y-4">
              <div class="grid sm:grid-cols-3 gap-4 text-sm">
                <div>
                  <p class="text-gray-text mb-1">Challenge</p>
                  <p>Artists lack control over digital rights and permanent storage on Web2 platforms.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Solution</p>
                  <p>Web3 gallery on permanent storage with artist ownership and fair compensation.</p>
                </div>
                <div>
                  <p class="text-gray-text mb-1">Results</p>
                  <p class="text-primary font-semibold">60+ artists, 40GB+ preserved, 10+ exhibitions</p>
                </div>
              </div>
            </div>
          </article>
        </div>
      </div>
    </section>

    <!-- How We Work -->
    <section id="how-we-work" class="py-16 md:py-24 bg-surface/30" aria-labelledby="process-heading">
      <div class="max-w-5xl mx-auto px-4">
        <div class="text-center mb-12 md:mb-16">
          <h2 id="process-heading" class="text-3xl md:text-4xl font-bold mb-4">How We Work</h2>
          <p class="text-gray-text max-w-2xl mx-auto">Security-first development with transparent collaboration</p>
        </div>

        <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
          <div class="p-6 border border-white/10">
            <div class="text-4xl font-bold text-primary/30 mb-4">01</div>
            <h3 class="text-lg font-bold mb-2">Security-First</h3>
            <p class="text-sm text-gray-text">
              Comprehensive testing and code review processes built into every project phase.
            </p>
          </div>
          <div class="p-6 border border-white/10">
            <div class="text-4xl font-bold text-primary/30 mb-4">02</div>
            <h3 class="text-lg font-bold mb-2">Agile Methodology</h3>
            <p class="text-sm text-gray-text">
              Flexible sprint cycles adapted to your project requirements and timeline.
            </p>
          </div>
          <div class="p-6 border border-white/10">
            <div class="text-4xl font-bold text-primary/30 mb-4">03</div>
            <h3 class="text-lg font-bold mb-2">Continuous Delivery</h3>
            <p class="text-sm text-gray-text">Automated testing, CI/CD pipelines, and real-time monitoring.</p>
          </div>
          <div class="p-6 border border-white/10">
            <div class="text-4xl font-bold text-primary/30 mb-4">04</div>
            <h3 class="text-lg font-bold mb-2">Client-Centric</h3>
            <p class="text-sm text-gray-text">Workflows tailored to match your team's needs and communication style.</p>
          </div>
          <div class="p-6 border border-white/10">
            <div class="text-4xl font-bold text-primary/30 mb-4">05</div>
            <h3 class="text-lg font-bold mb-2">Transparent Updates</h3>
            <p class="text-sm text-gray-text">Regular progress reports and collaborative decision-making throughout.</p>
          </div>
          <div class="p-6 border border-white/10">
            <div class="text-4xl font-bold text-primary/30 mb-4">06</div>
            <h3 class="text-lg font-bold mb-2">Expert Leadership</h3>
            <p class="text-sm text-gray-text">Lead developer oversight with specialized contractors for each domain.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Final CTA -->
    <section id="contact-cta" class="py-20 md:py-28" aria-labelledby="cta-heading">
      <div class="max-w-4xl mx-auto px-4 text-center">
        <h2 id="cta-heading" class="text-3xl md:text-4xl lg:text-5xl font-bold mb-6">
          Ready to Build Something Remarkable?
        </h2>
        <p class="text-xl text-gray-text mb-8 max-w-2xl mx-auto">
          Whether you're launching a DePIN network, creating Web3 applications, or integrating blockchain into existing
          systems—let's make it happen.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center mb-12">
          <RouterLink class="btn btn-primary text-lg px-8 py-4" to="/contact"> Start Your Project </RouterLink>
          <a class="btn text-lg px-8 py-4" href="mailto:build@memeticblock.com?subject=Project%20Inquiry">
            Email Us Directly
          </a>
        </div>

        <div class="inline-flex items-center gap-2 px-4 py-2 border border-success/50 text-success rounded-full">
          <span class="w-2 h-2 bg-success rounded-full animate-pulse" />
          <span class="text-sm font-medium">Currently accepting new projects</span>
        </div>
      </div>
    </section>
  </article>
</template>

<style scoped>
.about-page {
  --animate-duration: 0.3s;
}

@keyframes pulse {
  0%,
  100% {
    opacity: 1;
  }
  50% {
    opacity: 0.5;
  }
}

.animate-pulse {
  animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}
</style>

<script setup lang="ts">
import { useHead } from '@unhead/vue'

useHead({
  title: 'About Us - Blockchain Development & Web3 Solutions',
  link: [{ rel: 'canonical', href: 'https://memeticblock.io/about' }],
  meta: [
    { property: 'og:title', content: 'About Memetic Block | Blockchain Development & Web3 Solutions' },
    {
      name: 'description',
      content:
        'Memetic Block is a software guild specializing in blockchain development, DePIN infrastructure, ' +
        'Web3 applications, and smart contract solutions. Get a free consultation for your decentralized project.',
    },
    { name: 'twitter:title', content: 'About Memetic Block | Blockchain Development Experts' },
    {
      name: 'twitter:description',
      content:
        'Expert blockchain development team delivering DePIN networks, Web3 apps, and smart contract solutions. ' +
        '4,000+ relays deployed. Free consultation available.',
    },
    { property: 'og:type', content: 'website' },
    { property: 'og:url', content: 'https://memeticblock.io/about' },
    {
      name: 'keywords',
      content:
        'blockchain development company, smart contract development, decentralized applications, ' +
        'Web3 development, DePIN infrastructure, Arweave development, Ethereum development, Solana development, ' +
        'blockchain consulting, Web3 agency',
    },
    { name: 'robots', content: 'index, follow' },
    { property: 'og:locale', content: 'en_US' },
  ],
  script: [
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'Organization',
        name: 'Memetic Block',
        url: 'https://memeticblock.io',
        logo: 'https://memeticblock.io/logo/memetic-block/logo.svg',
        description:
          'Software guild specializing in blockchain development, DePIN infrastructure, and Web3 applications.',
        email: 'build@memeticblock.com',
        sameAs: ['https://x.com/memeticblock'],
        knowsAbout: [
          'Blockchain Development',
          'Smart Contracts',
          'DePIN',
          'Web3',
          'Decentralized Applications',
          'Arweave',
          'Ethereum',
          'Solana',
        ],
        hasOfferCatalog: {
          '@type': 'OfferCatalog',
          name: 'Blockchain Development Services',
          itemListElement: [
            {
              '@type': 'Offer',
              itemOffered: {
                '@type': 'Service',
                name: 'Smart Contract Development',
              },
            },
            {
              '@type': 'Offer',
              itemOffered: {
                '@type': 'Service',
                name: 'DePIN Infrastructure',
              },
            },
            {
              '@type': 'Offer',
              itemOffered: {
                '@type': 'Service',
                name: 'Web3 Application Development',
              },
            },
          ],
        },
      }),
    },
  ],
})
</script>
