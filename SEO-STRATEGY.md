# WatchLocal SEO Strategy — watchlocal.co

**Date:** March 2026
**Coverage:** 614 cities, 101 venues, 24 leagues, 12 sports

---

## 1. SEARCH TERM RESEARCH — KEYWORD PATTERNS & ESTIMATED VOLUME

### 1A. Primary Keyword Patterns (Intent Categories)

| Pattern | Example | Est. Volume | Intent |
|---------|---------|-------------|--------|
| "where to watch [league] in [city]" | where to watch Premier League in Bangkok | HIGH | Transactional — ready to go |
| "sports bars in [city]" | sports bars in Dubai | HIGH | Discovery — browsing options |
| "[league] bars [city]" | EPL bars Bangkok | MEDIUM | Transactional |
| "watch [sport] in [city]" | watch football in Singapore | MEDIUM | Mid-funnel |
| "best place to watch [league] in [city]" | best place to watch NFL in London | HIGH | AI/conversational query |
| "[team] bar [city]" | Arsenal bar Singapore | MEDIUM | Very specific, high conversion |
| "[team] supporters bar [city]" | Liverpool supporters bar Bangkok | MEDIUM | High conversion |
| "[league] pub [city]" | Premier League pub Amsterdam | MEDIUM | UK/AU searchers |
| "watch [event] in [city]" | watch Super Bowl in London | HIGH (seasonal) | Event-driven spike |
| "live sport [city]" | live sport Bangkok | MEDIUM | Generic discovery |
| "[venue name]" | The Sportsman Bangkok | LOW per venue | Navigational |
| "sports bar near me" | — | VERY HIGH | Local, hard to rank for without app |
| "where to watch [team]" | where to watch Manchester United | MEDIUM | Team-level, no city |

### 1B. AI / Conversational Search Patterns

These are increasingly important for ChatGPT, Perplexity, Google AI Overviews:

| Query Pattern | Notes |
|---------------|-------|
| "What's the best sports bar in Bangkok for watching Premier League?" | Superlative + specific |
| "Where can I watch the Super Bowl in London 2026?" | Event + year + city |
| "I'm an expat in Dubai, where can I watch AFL?" | Persona + niche league |
| "Sports bars in Bali that show NRL with multiple screens" | Feature-qualified |
| "Best place for a group to watch F1 in Singapore" | Use-case qualified |
| "Which bars in Bangkok open early for European football?" | Time-zone aware |

### 1C. Long-Tail / Niche Patterns (Low Volume, High Conversion)

- "pub with sound for football [city]"
- "outdoor sports bar [city]"
- "[league] viewing party [city]"
- "early morning football [city]" (for Asian/AU cities watching European leagues)
- "watch [team] away game [city]"
- "[venue name] review"
- "best screens for sport [city]"

---

## 2. SEARCH INTENT MAPPED TO URL STRUCTURE

### Current URL Structure Assessment

| Page Type | URL Pattern | Primary Keywords | Status |
|-----------|-------------|-----------------|--------|
| Homepage | `/` | sports bar finder, watch live sport | OK — needs richer content |
| League+City | `/watch/[league]/[city]` | "where to watch [league] in [city]" | STRONG — key landing pages |
| League+Team | `/watch/[league]/[team]` | "where to watch [team]" | OK — needs city drill-down |
| Team+City | `/watch/[league]/[team]/[city]` | "[team] bar [city]" | EXISTS — high value |
| Venue Detail | `/venues/[venue]` | "[venue name]", "[venue] reviews" | OK — needs more content |
| City | `/cities/[city]` | "sports bars in [city]" | OK — needs more content |
| League | `/watch/[league]` | "watch [league]" (generic) | MISSING dedicated page.tsx |
| Search | `/search?q=` | — | Not indexable (good) |

### GAPS IN URL STRUCTURE

**Critical Gaps:**

1. **`/watch/[league]/page.tsx` is missing** — There is no league overview page. When someone visits `/watch/premier-league`, there is no dedicated page file at `src/app/watch/[league]/page.tsx`. This is the most important structural gap. This page should list all cities where that league can be watched, act as a hub for internal linking, and target "watch [league]" and "where to watch [league]" queries.

2. **No sport-level pages** — `/watch/football`, `/watch/rugby` etc. do not exist. These would capture "watch football in [city]" style queries and link down to specific leagues.

3. **No blog/guide pages** — No `/blog` or `/guides` route exists. Content like "Best 10 Sports Bars in Bangkok (2026)" would capture listicle searches that dominate Google SERPs for these queries.

4. **No country-level pages** — `/countries/[country]` does not exist. "Sports bars in Thailand" or "where to watch EPL in UAE" searches have no landing page.

5. **No event-specific pages** — No pages for "Super Bowl", "El Clasico", "State of Origin", "Champions League Final" etc. These generate massive seasonal search spikes.

### Recommended New URL Structure

| New Route | Target Keywords | Priority |
|-----------|----------------|----------|
| `/watch/[league]/page.tsx` | "watch [league]", "[league] bars" | P0 — CRITICAL |
| `/guides/[slug]` | "best sports bars in [city] 2026" | P1 — HIGH |
| `/sports/[sport]` | "watch football", "watch rugby" | P2 — MEDIUM |
| `/countries/[country]` | "sports bars in Thailand" | P3 — MEDIUM |
| `/events/[event]` | "watch Super Bowl in [city]" | P2 — seasonal HIGH |

---

## 3. TOP 30 HIGHEST-VALUE KEYWORD COMBINATIONS

Prioritized by: (expat population) x (league popularity) x (search volume) x (low competition) x (conversion potential)

| Rank | Combination | Est. Volume | Competition | Expat Pop | Priority |
|------|------------|-------------|-------------|-----------|----------|
| 1 | EPL + Bangkok | Very High | Medium | Very High | P0 |
| 2 | EPL + Dubai | Very High | High | Very High | P0 |
| 3 | EPL + Bali/Canggu | High | Low | High | P0 |
| 4 | EPL + Singapore | High | Medium | High | P0 |
| 5 | EPL + Hong Kong | High | Medium | High | P0 |
| 6 | NFL + London | High | Medium | Medium | P0 |
| 7 | EPL + New York | High | Medium | Medium | P0 |
| 8 | UFC + Bangkok | High | Low | Very High | P0 |
| 9 | CL + Dubai | High | Medium | Very High | P1 |
| 10 | AFL + Bali/Canggu | High | Very Low | High | P0 |
| 11 | EPL + London | Very High | Very High | N/A (tourists) | P1 |
| 12 | CL + Bangkok | Medium | Low | Very High | P1 |
| 13 | F1 + Singapore | High | Medium | High | P1 |
| 14 | F1 + Dubai | Medium | Medium | Very High | P1 |
| 15 | CL + New York | Medium | Medium | Medium | P1 |
| 16 | NRL + Bangkok | Medium | Very Low | High | P0 |
| 17 | EPL + Ho Chi Minh City | Medium | Low | High | P0 |
| 18 | NRL + Bali | Medium | Very Low | High | P0 |
| 19 | F1 + London | Medium | High | N/A | P1 |
| 20 | EPL + Barcelona | Medium | Medium | Medium | P1 |
| 21 | AFL + Melbourne | High | Low (domestic) | N/A | P1 |
| 22 | EPL + Sydney | Medium | Medium | Medium | P1 |
| 23 | UFC + Dubai | Medium | Low | Very High | P1 |
| 24 | EPL + Chiang Mai | Medium | Very Low | High | P0 |
| 25 | EPL + Phuket | Medium | Very Low | Medium | P0 |
| 26 | EPL + Amsterdam | Medium | Low | Medium | P1 |
| 27 | NFL + New York | High | High (domestic) | N/A | P2 |
| 28 | Six Nations + London | High (seasonal) | Medium | N/A | P1 |
| 29 | CL + Singapore | Medium | Low | High | P1 |
| 30 | F1 + Bangkok | Medium | Very Low | Very High | P1 |

### Key Insight on Prioritization

The sweet spot is **high expat population + low competition**. The combinations ranked P0 above are ones where:
- WatchLocal has real venue data (or can easily seed it)
- Competition from major publishers (TimeOut, TripAdvisor) is weaker
- Search volume is proven by existing content ecosystems (Reddit threads, blog posts, Quora answers)

**Quick wins**: NRL+Bangkok, AFL+Bali, UFC+Bangkok, EPL+Chiang Mai, EPL+Phuket — these have almost zero dedicated competition but proven search demand.

---

## 4. AI SEARCH OPTIMIZATION

### 4A. How AI Systems Source Answers

ChatGPT, Perplexity, Google AI Overviews, and Bing Copilot all favor:

1. **Direct, factual answers** in the first 1-2 sentences of page content
2. **Structured data (JSON-LD)** — parsed directly by AI systems
3. **Lists with clear attributes** (name, address, key features)
4. **FAQ sections** — mined for Q&A pairs
5. **Freshness signals** — "Updated March 2026", last-modified dates
6. **Authority signals** — "verified", review counts, specific data points

### 4B. Content Structure for AI Pickup

Every `/watch/[league]/[city]` page should have this content flow:

```
[Direct answer paragraph — 2-3 sentences answering "where to watch X in Y"]
[Venue count + last updated date]
[Ordered list of venues with: name, address, screens, rating, key leagues]
[FAQ section with 5-7 Q&As]
[Structured data in JSON-LD]
```

Example lead paragraph (currently missing — pages jump straight to venue cards):

> "There are 4 verified sports bars in Bangkok showing Premier League matches live.
> The Sportsman Bar on Sukhumvit Soi 13 is the most popular, with 34 screens and
> 8 projectors. All venues listed below have been verified to show EPL in the
> 2025-26 season."

### 4C. JSON-LD Schema Additions Needed

**Currently implemented:**
- LocalBusiness (on venue pages) -- good
- FAQPage (on league+city pages) -- good
- BreadcrumbList (on league+city pages) -- good
- ItemList of LocalBusiness (on league+city pages) -- good

**Missing and should add:**

1. **WebSite schema** (on homepage — enables sitelinks search box in Google):
```json
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "WatchLocal",
  "url": "https://watchlocal.co",
  "description": "Find the best bars and venues to watch live sport anywhere in the world",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://watchlocal.co/search?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
```

2. **Organization schema** (on homepage):
```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "WatchLocal",
  "url": "https://watchlocal.co",
  "logo": "https://watchlocal.co/logo.png",
  "sameAs": []
}
```

3. **SportsActivityLocation** (on venue pages — more specific than LocalBusiness):
```json
{
  "@context": "https://schema.org",
  "@type": ["LocalBusiness", "SportsActivityLocation"],
  "name": "The Sportsman Bar & Restaurant",
  "additionalType": "https://schema.org/BarOrPub",
  ...existing fields...,
  "amenityFeature": [
    { "@type": "LocationFeatureSpecification", "name": "Screens", "value": "34" },
    { "@type": "LocationFeatureSpecification", "name": "Projector", "value": true },
    { "@type": "LocationFeatureSpecification", "name": "Outdoor Area", "value": true }
  ]
}
```

4. **Event schema** (for upcoming fixtures / events — future enhancement):
```json
{
  "@context": "https://schema.org",
  "@type": "ScreeningEvent",
  "name": "Manchester United vs Liverpool",
  "location": { "@type": "LocalBusiness", "name": "The Sportsman" },
  "startDate": "2026-03-22T20:00:00+07:00"
}
```

5. **Review schema** on venue pages (currently has aggregateRating from Google, should add individual Review markup for WatchLocal reviews):
```json
{
  "@type": "Review",
  "author": { "@type": "Person", "name": "..." },
  "reviewRating": { "@type": "Rating", "ratingValue": "4.5" },
  "reviewBody": "..."
}
```

### 4D. AI-Specific Optimization Tactics

| Tactic | Implementation | Impact |
|--------|---------------|--------|
| Lead with direct answer | Add intro paragraph to every league+city page | HIGH |
| "Last updated" date | Show "Updated March 2026" on every listing page | HIGH |
| Definitive numbers | "4 verified venues", "34 screens" — AI loves specifics | HIGH |
| Comparison content | "Best for EPL: The Sportsman (34 screens). Best for UFC: The Game (projector)" | MEDIUM |
| Add `speakable` schema | Mark the intro paragraph as speakable for voice assistants | LOW |
| Cite yourself | Add "According to WatchLocal.co" in meta descriptions | LOW |

---

## 5. TECHNICAL SEO CHECKLIST

### 5A. Critical Issues Found

| Issue | Status | Impact | Fix |
|-------|--------|--------|-----|
| **No robots.txt** | MISSING | HIGH | Create `src/app/robots.ts` |
| **No Open Graph tags** | MISSING | HIGH | Add to layout.tsx metadata + per-page |
| **No Twitter Card tags** | MISSING | HIGH | Add to layout.tsx metadata |
| **No canonical URLs** | MISSING | HIGH | Add metadataBase to layout.tsx |
| **No favicon/app icons** | MISSING (only SVGs) | MEDIUM | Add favicon.ico + apple-touch-icon |
| **League page missing** | No `src/app/watch/[league]/page.tsx` | CRITICAL | Create hub page |
| **No hreflang** | MISSING | LOW (English only for now) | N/A |
| **No `metadataBase`** | MISSING in layout.tsx | HIGH | Needed for canonical + OG URLs |
| **Sitemap missing league+city combos** | Only has team+city combos | HIGH | Add league+city pages to sitemap |
| **next.config.ts is empty** | No image domains, no redirects | MEDIUM | Configure properly |

### 5B. Meta Titles & Descriptions Per Page Type

**Homepage:**
- Current: "WatchLocal -- Find Sports Bars Anywhere"
- Recommended: "WatchLocal -- Find Where to Watch Live Sport in 600+ Cities Worldwide"
- Description: "Find verified sports bars showing Premier League, NFL, NBA, F1, UFC and more in Bangkok, Dubai, London, Bali and 600+ cities. Screen counts, ratings, and local kick-off times."

**League+City Pages (e.g., /watch/premier-league/bangkok):**
- Current: "Where to Watch Premier League in Bangkok | Best Sports Bars (2026)" -- GOOD
- Add: Year auto-updates (already does via `new Date().getFullYear()`) -- GOOD

**City Pages (e.g., /cities/bangkok):**
- Current: "Best Sports Bars in Bangkok | Watch Live Sport -- WatchLocal" -- GOOD
- Recommendation: Add venue count to description dynamically

**Venue Pages (e.g., /venues/the-sportsman-bangkok):**
- Current: "[Name] -- Sports Bar in [City] | WatchLocal" -- GOOD
- Recommendation: Add screen count and rating to title if available:
  "The Sportsman Bar -- 34 Screens, 4.7 Stars | Sports Bar Bangkok"

**League Hub Pages (NEW, /watch/premier-league):**
- Recommended: "Where to Watch Premier League Worldwide | Sports Bars in 50+ Cities -- WatchLocal"

### 5C. Robots.txt

Create `/Users/liam/Desktop/Claude/sports/src/app/robots.ts`:

```typescript
import { MetadataRoute } from 'next'

export default function robots(): MetadataRoute.Robots {
  return {
    rules: {
      userAgent: '*',
      allow: '/',
      disallow: ['/api/', '/submit-venue/success'],
    },
    sitemap: 'https://watchlocal.co/sitemap.xml',
  }
}
```

### 5D. Canonical URLs & metadataBase

Update `src/app/layout.tsx` to add:
```typescript
export const metadata: Metadata = {
  metadataBase: new URL('https://watchlocal.co'),
  title: { default: 'WatchLocal — Find Where to Watch Live Sport', template: '%s | WatchLocal' },
  description: '...',
  openGraph: {
    type: 'website',
    siteName: 'WatchLocal',
    locale: 'en_US',
  },
  twitter: {
    card: 'summary_large_image',
  },
  alternates: {
    canonical: './',
  },
}
```

### 5E. Sitemap Gaps

Current sitemap (`src/app/sitemap.ts`) includes:
- Static pages (homepage, submit-venue)
- League pages (`/watch/[league]`)
- Team+city combos (`/watch/[league]/[team]/[city]`)
- City pages (`/cities/[city]`)
- Venue pages (`/venues/[venue]`)

**Missing from sitemap:**
- League+city combos (`/watch/[league]/[city]`) — THE KEY LANDING PAGES are not in the sitemap!
- This is the most critical sitemap fix. These pages exist via the `[cityOrTeam]` dynamic route but are not being enumerated.

Fix: Query all distinct league_slug + city_slug combos from `page_combos` and add `/watch/{league}/{city}` URLs.

### 5F. Internal Linking Strategy

**Current state:** Minimal internal linking. Pages link up (breadcrumbs) but not across.

**Recommended internal linking:**

| From Page | Link To | Anchor Text Pattern |
|-----------|---------|-------------------|
| City page | League+city pages | "Watch [league] in [city]" for each league available |
| League+city page | Other leagues in same city | "Also in [city]: [other leagues]" |
| League+city page | Same league in nearby cities | "Also showing [league]: [nearby cities]" |
| Venue page | League+city page for each league the venue shows | "More [league] venues in [city]" |
| Venue page | City page | "[city] sports bar guide" |
| Homepage | Top league+city combos | Popular searches section (exists, good) |
| Footer | Top combos | Already has Sports/Leagues/Cities (good) |
| Blog/guide posts | Relevant league+city pages | Contextual links |

**Priority addition:** Add a "Related pages" or "Also in this city" section to:
1. League+city pages — link to other leagues in the same city
2. City pages — already link to leagues (good), but should also link to other nearby cities
3. Venue pages — already have "nearby venues" (good)

### 5G. Page Speed Considerations

| Issue | Status | Recommendation |
|-------|--------|---------------|
| Image optimization | Next.js Image component used on venue pages | GOOD |
| Font loading | Geist font loaded via next/font | GOOD — variable font, optimal |
| Lazy loading | No explicit lazy loading | Add `loading="lazy"` to below-fold images |
| CSS bundle | Tailwind CSS | GOOD — purged automatically |
| JS bundle | Client components: FAQSection, SearchBar, ThemeToggle, LeagueList, SuggestedLeagues | OK — consider reducing |
| Server components | Main pages are server components | GOOD |
| Caching | No explicit cache headers | Add `revalidate` to data fetches |
| No ISR/SSG | Pages appear to be fully dynamic SSR | Add `generateStaticParams` for top pages |

**Key recommendation:** Add `generateStaticParams` to the league+city page for the top 30 combinations. This pre-renders them at build time, dramatically improving TTFB for the highest-traffic pages.

---

## 6. CONTENT STRATEGY

### 6A. Content Requirements Per Page Type

**League+City Pages (`/watch/[league]/[city]`) — KEY PAGES:**

Current content: H1, venue count, venue cards, FAQ section.

Missing content that would help rank:
1. **Intro paragraph** (2-3 sentences) — directly answers "where to watch X in Y"
2. **"Quick answer" box** — top pick with name + address + why it's best
3. **Time zone section** — "Premier League matches kick off at X:XX local time in Bangkok"
4. **Broadcasting info** — "In Thailand, EPL is broadcast on TrueVisions/beIN Sports"
5. **Seasonal note** — "Updated for the 2025-26 season"
6. **Map embed** (future) — Google Maps showing all venue pins
7. **"How we verify" trust section** — builds E-E-A-T
8. **Cross-links** — other leagues in this city, this league in nearby cities

**City Pages (`/cities/[city]`):**

Current content: H1, venue count, league links, venue cards.

Missing:
1. **City intro** — "Bangkok is Southeast Asia's biggest expat hub with a thriving sports bar scene"
2. **Timezone + viewing culture** — "Most European matches air in the evening here"
3. **Top picks by sport** — "Best for EPL: The Sportsman. Best for AFL: The Clubhouse"
4. **Neighborhood breakdown** — "Sukhumvit: Best concentration of bars. Silom: More local feel"
5. **Practical tips** — "Most bars have happy hour before 7pm. Arrive 30min early for big matches"

**Venue Pages (`/venues/[venue]`):**

Current content: Comprehensive (images, features, leagues, reviews, nearby). GOOD.

Missing:
1. **Opening hours** (data field exists in schema but not displayed)
2. **"Best for" summary** — top 3 bullet points
3. **How to get there** — "5 min walk from Nana BTS"
4. **Booking/reservation info**

### 6B. Blog/Guide Strategy

**YES — add a blog/guides section.** These capture the highest-volume listicle queries.

Recommended content types:

| Content Type | Example Title | Target Keyword | Frequency |
|-------------|---------------|----------------|-----------|
| City guide | "10 Best Sports Bars in Bangkok (2026)" | "best sports bars bangkok" | 1 per top city |
| Event guide | "Where to Watch the 2026 Super Bowl in London" | "super bowl london 2026" | Per major event |
| League guide | "The Expat's Guide to Watching EPL in Southeast Asia" | "watch premier league asia" | Per league |
| Sport guide | "Where to Watch AFL Overseas: Complete Guide" | "watch afl overseas" | Per sport |
| Seasonal | "Best Cities for Sports Bar Culture in 2026" | "best sports bar cities" | Quarterly |
| Comparison | "Bangkok vs Bali: Which Has Better Sports Bars?" | Long-tail | Monthly |

**Implementation:** Create a `/guides/[slug]` route with MDX or CMS-driven content. Each guide should heavily link to the relevant `/watch/[league]/[city]` pages.

**Priority guides to write first (aligned with Top 30 keywords):**
1. "Best Sports Bars in Bangkok 2026 — Complete Guide"
2. "Where to Watch Premier League in Southeast Asia"
3. "Best Sports Bars in Dubai for Live Sport"
4. "Where to Watch AFL in Bali — Every Venue"
5. "NFL Bars in London — Complete Guide to American Football Pubs"

### 6C. Content Calendar Tied to Sporting Events

| Month | Event | Guide to Publish | Target Pages to Optimize |
|-------|-------|-----------------|------------------------|
| Aug | EPL Season Start | "EPL Season Preview: Where to Watch in X" | All EPL+city pages |
| Sep | NFL Season Start, Singapore GP | NFL London guide, F1 Singapore guide | NFL+London, F1+Singapore |
| Oct | NBA Season Start | "NBA bars in [cities]" | NBA+city pages |
| Nov | End of Year F1 Abu Dhabi | F1 Dubai/Abu Dhabi guide | F1+Dubai |
| Feb | Super Bowl, Six Nations | Super Bowl in London/Dubai/Bangkok | NFL+cities, Rugby+London |
| Mar | F1 Season Start, March Madness | F1 guide refresh | F1+cities |
| May | Champions League Final | CL final viewing guides | CL+cities |
| Jun | State of Origin (NRL) | "State of Origin in Bali" | NRL+Bali, NRL+Bangkok |

---

## 7. COMPETITIVE ANALYSIS

### 7A. Who Ranks for These Terms?

| Competitor | Strengths | Weaknesses | Threat Level |
|-----------|-----------|------------|-------------|
| **Fanzo** | Direct competitor, same use case, strong in UK | Limited international coverage, UX dated | HIGH |
| **Matchpint** | UK-focused pub finder with brewery partnerships | UK-only, no expat/travel angle | MEDIUM (UK only) |
| **TripAdvisor** | Massive domain authority, user reviews | Generic — not sports-specific, no league filtering | HIGH (authority) |
| **TimeOut** | City-specific listicles, high DA, good content | Manual content, not scalable, no structured data | HIGH (content) |
| **Reddit** | r/bangkok, r/dubai, r/digitalnomad threads rank well | Not a product, fragmented, outdated answers | MEDIUM |
| **Quora** | Long-tail Q&A answers | Low quality, outdated | LOW |
| **Google Maps** | "Sports bar near me" dominance | No league-specific filtering | HIGH (local) |
| **Local blogs** | e.g., BKKKids, WhatsonDubai — city-specific content | One-off articles, not maintained | MEDIUM |
| **Expat forums** | InternNations, expat Facebook groups | Not searchable, walled gardens | LOW |

### 7B. Competitive Advantage Analysis

**Where WatchLocal can win:**

1. **Structured data at scale** — No competitor has venue-level league coverage data with JSON-LD. This is the moat. AI systems will prefer structured, machine-readable data.

2. **Long-tail programmatic pages** — TimeOut writes one article about "sports bars in Bangkok." WatchLocal can have 24 pages (one per league x Bangkok). This covers far more keyword surface area.

3. **Freshness** — Blog posts from 2023 still rank for these queries. A dynamically updated database with "last verified" dates will eventually outrank static articles.

4. **Niche leagues in niche cities** — Nobody has written "where to watch NRL in Chiang Mai" or "AFL bars in Ho Chi Minh City." These are uncontested keywords with real demand.

5. **AI-first structured content** — WatchLocal's JSON-LD + FAQ schema + direct-answer paragraphs will be preferred by AI systems over generic TripAdvisor pages.

**Where WatchLocal will struggle:**

1. **Domain authority** — New domain vs TripAdvisor (DA 93), TimeOut (DA 89). Takes time to build.
2. **"Sports bars in [city]" generic queries** — Google Maps and TripAdvisor dominate.
3. **Team-specific queries** — Official supporter club sites and Reddit threads are strong.

### 7C. Competitive Strategy

| Strategy | Tactic | Timeline |
|----------|--------|----------|
| **Own the long-tail** | Build all 614 x 24 league+city pages with real content | Now |
| **Win uncontested keywords** | Prioritize low-comp combos (NRL+Bangkok, AFL+Bali) | Now |
| **Build authority** | Get listed/linked from expat blogs, supporter club sites | 3-6 months |
| **Content moat** | Publish 2-3 guides per month targeting listicle queries | Ongoing |
| **Technical edge** | Best-in-class structured data, page speed, mobile UX | Now |
| **Community flywheel** | User reviews + venue submissions = fresh content + engagement signals | 6-12 months |

---

## 8. IMPLEMENTATION PRIORITY

### Phase 1 — Critical Fixes (Week 1-2)

1. **Create `src/app/robots.ts`** — Enables proper crawling
2. **Add `metadataBase` to layout.tsx** — Enables canonical URLs + OG tags
3. **Add Open Graph + Twitter Card metadata** — Social sharing + rich previews
4. **Fix sitemap to include league+city pages** — Currently the KEY landing pages are not in the sitemap
5. **Create `/watch/[league]/page.tsx`** — League hub pages (currently 404s)
6. **Add WebSite + Organization JSON-LD to homepage**

### Phase 2 — Content & Ranking (Week 3-6)

7. **Add intro paragraphs to league+city pages** — Direct-answer content for AI
8. **Add cross-linking sections** — "Other leagues in this city" + "This league in nearby cities"
9. **Add timezone/broadcasting info** to league+city pages
10. **Enhance venue JSON-LD** — Add SportsActivityLocation, amenityFeature, Review markup
11. **Add `generateStaticParams` for top 30 combinations** — Pre-render for speed
12. **Seed venue data for top 30 keyword combinations** — Ensure pages have real content

### Phase 3 — Content Marketing (Week 7-12)

13. **Create `/guides/` route and first 5 city guides**
14. **Write event guides** tied to upcoming sporting calendar
15. **Add city intro content** to city pages
16. **Build internal linking mesh** between related pages
17. **Create country-level pages** for top countries (Thailand, UAE, UK, Indonesia, USA)

### Phase 4 — Advanced (Month 3-6)

18. **Add map embeds** to city and league+city pages
19. **Implement review structured data** for WatchLocal reviews
20. **Add ScreeningEvent schema** for upcoming fixtures at venues
21. **Build supporter club directory pages**
22. **Implement hreflang** if expanding to non-English markets
23. **Create venue comparison pages** ("The Sportsman vs Buddy's Bangkok")

---

## 9. MEASUREMENT

### KPIs to Track

| Metric | Tool | Target (6 months) |
|--------|------|-------------------|
| Organic impressions | Google Search Console | 100K/month |
| Organic clicks | Google Search Console | 10K/month |
| Pages indexed | Google Search Console | 1,000+ |
| AI citation mentions | Manual + Perplexity monitoring | 50+ queries cite WatchLocal |
| Top 10 rankings for target keywords | Ahrefs/SEMrush | 50 keywords in top 10 |
| Referring domains | Ahrefs | 100+ |
| Average position for "where to watch [league] in [city]" | GSC | Top 5 for priority combos |

### Quick Win Tracking

After implementing Phase 1, monitor these specific queries in GSC within 4-8 weeks:
- "where to watch premier league in bangkok"
- "sports bars bangkok"
- "nrl bars bali"
- "afl bali canggu"
- "ufc bars bangkok"
- "nfl bars london"
- "premier league bars dubai"
