# Memetic Block Website Update Plan
**Date:** June 7, 2026
**Goal:** Refresh memeticblock.com to reflect current company positioning and capabilities. Complete and deployed today using agentic developers.

## Current Site Analysis

**Tech Stack**
- Vue.js SPA with vite-ssg, statically hosted on cloudflare pages
- Some content is client-side js or css rendered, which can cause agents/crawlers to miss sections on /about, /case-studies, /contact

**Pages**
- / (Home) — strong guild thesis
- /about — covers Anyone Protocol, Wuzzy, Frostor
- /case-studies — lists two main projects
- /contact — form + email

**Observations**
- Navigation links to all four main pages exist
- Some Vue-rendered content may be hidden or not immediately visible to non-JS agents
- Canonical URLs inconsistently use memeticblock.io in some places
- Current metrics for Anyone Protocol are outdated (should be 7500+ relays)
- No mention of agentic coding teams or human-in-the-loop approach
- CTAs for new enterprise projects could be much stronger

## Execution Plan – Today

**Branch:** `guild-positioning-update-2026-06`

**Steps**

### 1. Setup (30–45 mins)
- Create branch `guild-positioning-update-2026-06`
- Install dependencies and run locally (`npm run dev`) so all Vue-rendered content is visible

### 2. Positioning & Copy Updates (2 hours)
- Update homepage hero and key sections with new core positioning:
  - "Software guild combining senior engineers with agentic coding teams operating under deliberate human-in-the-loop oversight to deliver enterprise-grade distributed systems."
- Refresh /about page — add "How We Work" section explaining human-in-the-loop model
- Update Anyone Protocol reference to 7500+ relays (remove any maintenance mode language)
- Strengthen CTAs across all pages for new projects (point to build@memeticblock.com)

### 3. Case Studies Refresh (Storyteller agent – 2 hours)
- Onboard Storyteller agent
- Refresh both existing case studies with updated language and metrics
- Add one new short "micro case study" on building our internal agentic development capability
- Ensure all content on /case-studies is fully visible (no hidden Vue sections)

### 4. Technical & SEO Improvements (1.5 hours)
- Fix canonical URLs to consistently use memeticblock.com
- Add proper `<title>`, meta descriptions, and Open Graph tags for all 4 pages
- Add JSON-LD structured data (Organization + CaseStudy)
- Improve internal linking between all main pages
- Update or generate sitemap.xml to include all routes
- Verify no content is hidden via CSS or Vue conditionals on subpages

### 5. Test & Deploy (45–60 mins)
- Run existing CI/CD pipeline
- Test all pages (desktop + mobile)
- Verify all four pages render fully (especially /about, /case-studies, /contact)
- Merge to main and confirm deployment

**Success Criteria**
- All pages clearly communicate current positioning (agentic teams + human-in-the-loop + enterprise-grade)
- Anyone Protocol updated to 7500+ relays
- Improved SEO and crawlability
- Stronger calls-to-action for new projects
