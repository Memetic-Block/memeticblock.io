<template>
  <div class="py-8">
    <!-- Hero Section -->
    <section class="text-center mb-12">
      <h1 class="text-3xl md:text-4xl font-bold mb-4">Memetic Block - About Us</h1>
      <h2 class="text-xl md:text-2xl text-gray-text mb-6">Empowering Innovation with Decentralized Software Solutions</h2>
      <p class="mb-6">
        We build custom, scalable blockchain solutions to power your business.
      </p>
      <RouterLink class="btn" to="/contact">Get a Free Quote</RouterLink>
    </section>

    <hr class="border-white/20 my-12" />

    <!-- Who We Are -->
    <section id="who-we-are" class="mb-12">
      <h2 class="text-2xl font-bold mb-6">Who We Are</h2>
      <p class="leading-relaxed">
        Founded by experienced blockchain developers and distributed systems architects, <strong>Memetic Block is a Software Guild dedicated to building distributed systems that create value and foster creativity.</strong> We believe that software is willpower automated—a philosophy that drives our commitment to developing innovative blockchain solutions, decentralized applications, and Web3 infrastructure that empowers communities and creators across all major blockchain networks.
      </p>
    </section>

    <hr class="border-white/20 my-12" />

    <!-- Expertise -->
    <section id="expertise" class="mb-12">
      <h2 class="text-2xl font-bold mb-6">Our Expertise</h2>
      
      <h3 class="text-xl font-bold mt-8 mb-4">Technologies & Platforms</h3>
      <p class="mb-4">Our technical capabilities span the entire blockchain ecosystem, with deep expertise in emerging technologies and established platforms alike:</p>
      <ul class="list-disc list-inside space-y-2 mb-8">
        <li>Multi-chain blockchain development (Ethereum, Arweave, Solana, Cardano, and more)</li>
        <li>DePIN (Decentralized Physical Infrastructure) networks</li>
        <li>Web3 gateways and distributed storage solutions</li>
        <li>Neural radiance fields and AI integration</li>
        <li>Encrypted communications and privacy protocols</li>
        <li>Smart contract development and auditing</li>
      </ul>
      
      <h3 class="text-xl font-bold mt-8 mb-4">Industries & Use Cases</h3>
      <p class="mb-4">We work across diverse industries and use cases, delivering solutions that address real-world challenges:</p>
      <ul class="list-disc list-inside space-y-2 mb-8">
        <li>Decentralized VPN and privacy networks</li>
        <li>Digital art preservation and Web3 galleries</li>
        <li>Blockchain gaming and NFT platforms</li>
        <li>Supply chain and IoT infrastructure</li>
        <li>Decentralized social media and content platforms</li>
        <li>Enterprise blockchain consulting</li>
      </ul>
      
      <h3 class="text-xl font-bold mt-8 mb-4">Capabilities</h3>
      <p class="mb-4">Our comprehensive service offerings cover the full development lifecycle, from conception to deployment and beyond:</p>
      <ul class="list-disc list-inside space-y-2">
        <li>Full-stack decentralized application development</li>
        <li>Blockchain protocol engineering and optimization</li>
        <li>Custom smart contract development</li>
        <li>DePIN network architecture and deployment</li>
        <li>Web3 UX/UI design and implementation</li>
        <li>Technical consulting and system architecture</li>
      </ul>
    </section>

    <hr class="border-white/20 my-12" />

    <!-- Featured Projects -->
    <section id="projects" class="mb-12">
      <h2 class="text-2xl font-bold mb-6">Featured Projects</h2>
      
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
        <article class="border border-white/30 p-6">
          <h3 class="text-lg font-bold mb-4">Anyone Protocol - DePIN VPN Network</h3>
          <p class="text-sm text-gray-text mb-3"><strong class="text-white">Challenge:</strong> Traditional VPN solutions rely on centralized servers that create privacy vulnerabilities and trust issues, while lacking proper economic incentives for network participants.</p>
          <p class="text-sm text-gray-text mb-3"><strong class="text-white">Solution:</strong> Engineering consulting services for a <strong>decentralized privacy network</strong> using <strong>onion routing</strong> technology, enabling users to contribute bandwidth and earn rewards while ensuring true privacy through trustless infrastructure.</p>
          <p class="text-sm text-gray-text"><strong class="text-white">Results:</strong> Successfully launched testnet with <strong>4,000+ registered relays</strong>, creating a robust decentralized network that eliminates single points of failure and provides economic incentives for participants.</p>
        </article>
        
        <article class="border border-white/30 p-6">
          <h3 class="text-lg font-bold mb-4">Art By City - Web3 Artist Empowerment Platform</h3>
          <p class="text-sm text-gray-text mb-3"><strong class="text-white">Challenge:</strong> Artists struggle with digital rights management, permanent storage of their work, and fair compensation in traditional Web2 platforms that can disappear or change terms.</p>
          <p class="text-sm text-gray-text mb-3"><strong class="text-white">Solution:</strong> Built a comprehensive <strong>Web3 gallery</strong> and artist empowerment platform on <strong>permanent storage infrastructure</strong>, enabling artists to preserve their work indefinitely while maintaining ownership and receiving fair compensation.</p>
          <p class="text-sm text-gray-text"><strong class="text-white">Results:</strong> Empowered <strong>60+ artists</strong> with permanent storage of <strong>40+ gigabytes</strong> of digital art, hosted <strong>10+ exhibitions</strong>, and created a sustainable ecosystem for digital art preservation and monetization.</p>
        </article>
        
        <article class="border border-white/30 p-6 lg:col-span-2">
          <h3 class="text-lg font-bold mb-4">Frostor & Love4src - High-Performance Arweave Gateways</h3>
          <p class="text-sm text-gray-text mb-3"><strong class="text-white">Challenge:</strong> Arweave's decentralized storage network needed reliable, high-performance gateways to provide fast access to permanent data while maintaining decentralization.</p>
          <p class="text-sm text-gray-text mb-3"><strong class="text-white">Solution:</strong> Developed and deployed multiple <strong>AR.IO network gateways</strong> with optimized performance, supporting the <strong>permaweb infrastructure</strong> with enterprise-grade reliability and speed.</p>
          <p class="text-sm text-gray-text"><strong class="text-white">Results:</strong> Achieved <strong>top 5 performance rankings</strong> across multiple gateways, contributing to a more resilient and accessible permanent web infrastructure for the global community.</p>
        </article>
      </div>
      
      <RouterLink class="btn" to="/#projects">View Full Portfolio</RouterLink>
    </section>

    <hr class="border-white/20 my-12" />

    <!-- How We Work -->
    <section id="how-we-work" class="mb-12">
      <h2 class="text-2xl font-bold mb-6">How We Work</h2>
      <p class="mb-4 leading-relaxed">
        Our development approach centers on <strong>secure, high-quality software engineering</strong> tailored to each client's unique needs. We maintain a <strong>lead developer</strong> who oversees all technical decisions and architecture, supported by a <strong>carefully selected contracted team</strong> of specialists in various blockchain technologies and distributed systems.
      </p>
      <p class="mb-4">Our core principles include:</p>
      <ul class="list-disc list-inside space-y-2 mb-6">
        <li><strong>Security-first development</strong> with comprehensive testing and code review processes</li>
        <li><strong>Classic software engineering practices</strong> adapted for blockchain and distributed systems</li>
        <li><strong>Agile methodologies</strong> with flexible sprint cycles based on project requirements</li>
        <li><strong>Continuous integration and deployment</strong> with automated testing and monitoring</li>
        <li><strong>Client-centric process adaptation</strong> - we adjust our workflows to match your team's needs and communication preferences</li>
        <li><strong>Transparent communication</strong> with regular updates and collaborative decision-making</li>
      </ul>
      <p class="leading-relaxed">
        We combine proven software development methodologies with cutting-edge blockchain expertise, ensuring your project benefits from both technical excellence and practical business understanding. Whether you need rapid prototyping or enterprise-grade production systems, we scale our processes to deliver optimal results.
      </p>
    </section>

    <hr class="border-white/20 my-12" />

    <!-- Contact CTA -->
    <section id="contact" class="text-center">
      <h2 class="text-2xl font-bold mb-6">Ready to Start Your Project?</h2>
      <p class="mb-4">
        <strong>Let's talk.</strong> Transform your vision into reality with blockchain solutions that scale.
      </p>
      <p class="mb-8">
        Whether you're looking to build a DePIN network, create Web3 applications, or integrate blockchain technology into your existing systems, we're here to help you succeed.
      </p>
      <RouterLink class="btn" to="/contact">Get Started Today</RouterLink>
      
      <div class="mt-12 text-left max-w-md mx-auto">
        <h3 class="text-xl font-bold mb-4">Contact Information</h3>
        <ul class="list-none space-y-2">
          <li>Email: <a class="underline hover:text-primary transition-colors" href="mailto:build@memeticblock.com?subject=Connect%20with%20Memetic%20Block">build@memeticblock.com</a></li>
          <li>Twitter: <a class="underline hover:text-primary transition-colors" href="https://x.com/memeticblock">@memeticblock</a></li>
          <li>Website: <a class="underline hover:text-primary transition-colors" href="https://memeticblock.io">memeticblock.io</a></li>
        </ul>
      </div>
      
      <p class="mt-10">Ready to build the future of decentralized technology? We're currently <span class="text-success font-bold">OPEN</span> to new projects.</p>
    </section>
  </div>
</template>

<script setup lang="ts">
import { useHead } from '@unhead/vue'

useHead({
  title: 'About',
  meta: [
    { property: 'og:title', content: 'About | Memetic Block' },
    {
      name: 'description',
      content: 'Memetic Block delivers custom blockchain and decentralized software solutions. Contact us for innovative, scalable development projects.'
    },
    { name: 'twitter:title', content: 'About | Memetic Block' },
    {
      name: 'twitter:description',
      content: 'Memetic Block delivers custom blockchain and decentralized software solutions for businesses.'
    },
    { property: 'og:type', content: 'website' },
    { name: 'keywords', content: 'blockchain development, smart contract development, decentralized applications, Web3, DePIN' }
  ],
})
</script>
