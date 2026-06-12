/**
 * Shared content for the marketing site — single source of truth for the
 * proof stats, service offers, featured work, and Lab projects.
 *
 * Stats discipline: every relay/bandwidth number here must match the Anyone
 * Protocol case study (22,000+ registered / 7,600+ active / 69+ Gbps).
 */

export type Tone = 'success' | 'info' | 'warning' | 'muted'

export const EMAIL = 'build@memeticblock.com'

export interface ProofStat {
  num: string | null
  label: string
  /** Render a pulsing status dot instead of a number. */
  dot?: boolean
}

export const PROOF: ProofStat[] = [
  { num: '22,000+', label: 'relays registered' },
  { num: '7,600+', label: 'active relays' },
  { num: '69+ Gbps', label: 'network bandwidth' },
  { num: null, label: 'On call since launch', dot: true },
]

export interface Offer {
  id: string
  no: string
  name: string
  body: string
}

/** Homepage teaser cards — each links to the matching Services section. */
export const OFFERS: Offer[] = [
  {
    id: 'retainer',
    no: '01',
    name: 'Engineering Retainer',
    body: 'Your senior engineering team, on call. Architecture, full-stack build, infrastructure, and operations — owned end to end, month over month. The model behind every production system we run.',
  },
  {
    id: 'audit',
    no: '02',
    name: 'Production Readiness Audit',
    body: 'A fixed-fee, two-week review of your system by engineers who operate production infrastructure for a living. What will break, what it costs you, what to fix first.',
  },
  {
    id: 'scoped',
    no: '03',
    name: 'Scoped Builds',
    body: 'A defined system, designed and shipped: protocol infrastructure, backend platforms, AI/LLM systems, smart contracts. Fixed scope, senior team, production-grade from the first commit.',
  },
]

export interface FeaturedProject {
  id: string
  name: string
  status: string
  tone: Tone
  tag: string
  img: string
  imgAlt: string
  body: string
  stats: string | null
  /** Route to the full case study. */
  caseStudy: string
  /** External product link, if any. */
  external: string | null
}

export const FEATURED: FeaturedProject[] = [
  {
    id: 'anyone',
    name: 'Anyone Protocol',
    status: 'Live',
    tone: 'success',
    tag: 'DePIN',
    img: '/images/case-studies/fromzerotoanyone-notext.png',
    imgAlt: 'From Zero to Anyone: Anyone Protocol case study',
    body: 'DePIN privacy network. We took Anyone Protocol from an ERC-20 token to a live decentralized VPN: multi-chain smart contracts, backend microservices, operator dashboard, and full infrastructure operations — built from zero, operated by us since launch.',
    stats: '22,000+ relays registered · 7,600+ active · 69+ Gbps',
    caseStudy: '/case-studies/anyone-protocol',
    external: 'anyone.io',
  },
  {
    id: 'baremetal',
    name: 'Bare-Metal Private Cloud',
    status: 'Live',
    tone: 'success',
    tag: 'Infrastructure',
    img: '/images/case-studies/bare-metal-private-cloud-notext.png',
    imgAlt: 'Beyond the Cloud: Bare-Metal Private Cloud case study',
    body: 'How we keep critical decentralized systems online when centralized providers go down. Independent CI/CD, full-stack observability, isolated networking, bounded blast radius — infrastructure designed to fail small.',
    stats: null,
    caseStudy: '/case-studies/bare-metal-private-cloud',
    external: null,
  },
]

export interface LabProject {
  name: string
  status: string
  tone: Tone
  corner: 'br' | 'bl' | 'tr' | 'tl'
  body: string
}

export const LAB: LabProject[] = [
  {
    name: 'Agentic Delivery Pipeline',
    status: 'In progress',
    tone: 'info',
    corner: 'br',
    body: 'An autonomous software-delivery pipeline: requirements → issues → pull requests → CI green → human-gated merge. One full sprint completed end to end. Writeup coming.',
  },
  {
    name: 'Wuzzy Search',
    status: 'Live alpha',
    tone: 'warning',
    corner: 'bl',
    body: 'Permaweb search engine. Agents of AO Hackathon winner, 2025.',
  },
  {
    name: 'Frostor',
    status: 'Live',
    tone: 'success',
    corner: 'tr',
    body: 'Arweave gateway. 200k+ $ARIO staked.',
  },
  {
    name: 'Art By City',
    status: 'Dormant',
    tone: 'muted',
    corner: 'tl',
    body: 'Web3 artist empowerment. 60+ artists, 40+ GB of art, 31k+ data transactions.',
  },
]
