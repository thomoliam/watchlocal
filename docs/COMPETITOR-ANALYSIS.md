# Fanzo Competitor Analysis — WatchLocal

_Last updated: March 2026_

---

## Who Is Fanzo

Originally founded in 2011 as **MatchPint** in London. Rebranded to Fanzo in 2022 after raising ~$3-8M. Operates in UK, Ireland, Australia, France, Germany, NZ, UAE, and launched in the US in January 2026. Claims 6M users, 47,000 venues, $122M driven into partner venues, and 13,500+ paying venue customers.

**Fanzo is not a venue directory. It is a data infrastructure company.** Their real product is connecting sports broadcast schedules → venue subscription data → consumer search. The free consumer app is a flywheel that justifies B2B fees from venues and brands.

---

## What Fanzo Does Better Than Us

### 1. Match-First Search Flow (Their Core Moat)
Users search by a **specific upcoming game**, not just "sports bars near me." Fanzo shows only venues *confirmed* to be showing that exact match. This is their #1 differentiator.

Why this matters: fans don't search "sports bar Bangkok" at 11pm. They search "where to watch Man United vs Arsenal tonight." We currently can't do this because venues don't actively confirm their schedules on our platform — but we can get closer by surfacing fixtures data on pages.

### 2. Programmatic SEO at Scale (5 Taxonomies vs Our 2)
Fanzo generates unique indexed pages across **five distinct taxonomies**:

| Taxonomy | Example URL | Intent |
|---|---|---|
| City | `/en-us/bars-pubs/chicago` | "sports bars in chicago" |
| Neighbourhood | `/en-us/bars-pubs/chicago/hyde-park` | "sports bars in hyde park" |
| Sport | `/en-us/bars-pubs/baseball` | "bars showing baseball" |
| Competition | `/en-us/bars-pubs/soccer/premier-league` | "premier league bars usa" |
| Team/Athlete | `/en-us/bars-pubs/rugby/ireland` | "where to watch ireland rugby" |
| Feature filter | `/en-us/bars-pubs/with-big-screen` | "sports bars with big screens" |
| TV Channel | `/en-us/bars-pubs/sky-sports` | "bars with sky sports" |
| Match event | `/en-au/bars-showing/737322/hawks-vs-swans` | "where to watch hawks vs swans tonight" |

We currently have: league×city and team×city. That's 2 taxonomies. Fanzo has 8.

### 3. Neighbourhood Sub-Pages
For every major city they index 5+ neighbourhood-level pages. In London: Shoreditch, Soho, Fitzrovia, City, Canary Wharf. These capture hyper-local intent that city-level pages don't rank for.

### 4. Match Event Pages (SportsEvent Schema)
Individual pages for specific upcoming fixtures. "Hawthorn Hawks vs Sydney Swans — Thursday March 19 at 7:25pm AEST." These pages have SportsEvent JSON-LD schema and capture last-minute "where to watch [tonight's game]" searches. Fanzo creates and deletes thousands of these automatically from fixtures data.

### 5. Table Reservations
In-app table booking at partner venues. No phone calls required. This is a significant retention feature for both users and venue partners.

### 6. B2B Flywheel / Venue Confirmation
Venues that pay for the Pub Portal actively manage their own sports schedules. A venue appearing on Fanzo for a specific match is *confirmed*, not scraped. This data quality moat is hard for any scrape-based competitor to replicate.

### 7. Gamification / Footy Tipping
Weekly prediction games (Carlton Draught Footy Tipping, VB NRL Tipping). Winners get free drinks redeemable at partner venues. Creates weekly engagement loops and drives repeat physical venue visits. This is catnip for their B2B venue customers.

### 8. Brand/Broadcaster Partnerships
Guinness, Budweiser, Heineken, Carlsberg, Asahi, Lay's, Coca-Cola, Foxtel, Canal+, TNT Sports all pay Fanzo for activations and "Official Bar Finder" white labels. These are 6-figure enterprise deals that fund the consumer product being free.

### 9. TV Guide Integration
Full sports broadcast schedule (what's on, which channel, what time) integrated directly with the venue finder. Fanzo knows what channel every match is on AND which venues subscribe to that channel.

---

## Our Advantages (Don't Lose These)

### 1. Editorial Content — This Is Our Biggest Edge
**Fanzo has zero consumer-facing editorial content.** No city guides, no league guides, no "best sports bars in X" articles. Nothing. Their blog is 100% B2B brand case studies.

We have 14 MDX guides. We need 100+. Every article we publish is a moat Fanzo isn't building.

### 2. Global City Coverage
1,112+ cities indexed. Fanzo is strong in UK/AU/IE and only just launched in the US. Our global footprint (Asia, Africa, South America, Pacific) is largely unchallenged by them.

### 3. League × City Pages
Our `/watch/[league]/[city]` page structure is excellent and already covers the primary intent query ("where to watch Premier League in Bangkok"). This is our core SEO asset.

### 4. No Paywall on Any Feature
Everything we build is free for consumers. Fanzo's B2B model means venue data quality depends on who's paying — our scraped + geocoded data is comprehensive regardless.

### 5. Speed / Build Quality
Our stack (Next.js, Supabase, ISR) gives us extremely fast page loads. Fanzo's app has known bugs (login loops, reward redemption failures per App Store reviews).

---

## Prioritised Action Items

### Tier 1 — High Impact, Build Now

**A. Neighbourhood Sub-Pages**
For the 20 largest cities, create sub-pages like `/cities/london/shoreditch`. Data can be seeded from neighbourhood bounding boxes + existing venue coordinates. Each page targets hyper-local intent that our city pages don't capture. Estimated: 100–200 new indexed pages.

**B. Match Event Pages (From Fixtures Table)**
We already have a `fixtures` table. Build `/watch/[league]/[team-a]-vs-[team-b]/[date]` pages with SportsEvent schema. Auto-generate for all upcoming fixtures. These pages appear in Google for last-minute "where to watch X tonight" searches — the highest-intent queries in our space. Start with the 5 biggest leagues.

**C. More Guide Articles — Priority Queue**
Every guide we publish is a moat Fanzo isn't building. Priority order:
1. Best sports bars in [city] for every top-20 city (NYC, Paris, Tokyo, Barcelona, Bali, Berlin, Dublin, etc.)
2. Where to watch [league] in [country] (NFL in UK, AFL outside Australia, F1 globally)
3. Event guides for 2026 (World Cup qualifiers, Lions Tour, Ryder Cup, etc.)
4. "Sports bar tourist" guides — guides for travellers not expats

**D. Feature Filter Pages**
`/cities/london/outdoor-seating`, `/cities/london/food-served`, `/cities/london/big-screens`. Fanzo has these. Easy wins using our existing `has_outdoor_area`, `has_food`, `price_range` columns. 5 filters × 50 cities = 250 new indexed pages.

### Tier 2 — Medium Impact, Build Next

**E. TV Channel Filter Pages**
`/watch/sky-sports/london`, `/watch/espn/new-york`. These capture the "where can I watch [channel] near me" queries. Requires mapping leagues/cities to broadcasters (we have `timezone.ts` broadcaster data).

**F. Enhanced Guides Index Page**
Current guides page is basic — no filtering, no categories, no featured articles, no reading time. Add: category filter tabs, reading time estimates, featured/pinned articles, related guide links within articles. Also add `ItemList` schema to the guides index.

**G. Sport-Level Pages**
`/sports/football`, `/sports/rugby`, `/sports/basketball` — aggregate pages by sport rather than league. "Find sports bars showing football near you" as a top-level entry point. Fanzo has these and they rank well for broad sport queries.

**H. City Page Improvements**
Add `LocalBusiness` aggregate schema. Add a "Leagues available in [city]" structured section with deep links to league×city pages. City pages are currently thin on schema.

### Tier 3 — Strategic, Plan For

**I. Venue Confirmation System**
The ability for venues to claim their listing and confirm they're showing specific leagues. Even a basic email verification flow makes our data more trustworthy than a pure scrape competitor. Doesn't need Fanzo's full Pub Portal — just a claim + confirm flow.

**J. Upcoming Fixtures on Venue Pages**
Show upcoming fixtures at each venue based on the leagues they cover. Pulls from our `fixtures` table. Turns static venue pages into dynamic, revisit-worthy pages.

**K. "Best For" Editorial Curation**
Editor's picks, "Best for big groups", "Best outdoor terraces", "Best for expats" curated lists per city. No algorithm — human curation. Fanzo has zero of this. Differentiates us on quality, not just quantity.

---

## Content Priority Queue (Guides to Write Next)

| Guide Title | Category | Search Volume Est. | Priority |
|---|---|---|---|
| Best Sports Bars in New York City 2026 | City Guide | Very High | 1 |
| Best Sports Bars in Paris 2026 | City Guide | High | 2 |
| Best Sports Bars in Tokyo 2026 | City Guide | High | 3 |
| Best Sports Bars in Barcelona 2026 | City Guide | High | 4 |
| Best Sports Bars in Bali 2026 | City Guide | High | 5 |
| Best Sports Bars in Berlin 2026 | City Guide | Medium-High | 6 |
| Best Sports Bars in Dublin 2026 | City Guide | Medium-High | 7 |
| Best Sports Bars in New Zealand 2026 | Country Guide | Medium | 8 |
| Where to Watch the NFL in the UK 2026 | League Guide | High | 9 |
| Where to Watch F1 Outside the UK 2026 | League Guide | High | 10 |
| Where to Watch AFL in Bali 2026 | Expat Guide | Medium | 11 |
| Where to Watch the Lions Tour 2025 | Event Guide | High | 12 |
| Where to Watch Rugby World Cup 2027 | Event Guide | Medium | 13 |
| Sports Bars Near Heathrow Airport | Traveller Guide | Medium | 14 |
| Best Sports Bars for Big Groups London | Curated | Medium | 15 |

---

## Summary

Fanzo's moat is **confirmed match-day schedules + B2B venue fees + brand partnerships**. That's hard to replicate without significant sales resource.

Our moat should be:
1. **Editorial content** — guides, articles, curation. Fanzo has literally none.
2. **Global coverage** — Fanzo is barely in Asia, Africa, South America, Pacific.
3. **Programmatic SEO breadth** — match pages, neighbourhood pages, feature filters, sport pages. We're 2 taxonomies where we should be 8.
4. **Page quality** — richer content, better schemas, more local knowledge per page.

The window is open. Fanzo just launched in the US and their blog is empty.
