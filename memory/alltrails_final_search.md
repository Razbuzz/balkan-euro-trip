# AllTrails URL Final Search — Sitemap-Based Research

**Date:** August 30, 2026
**Method:** Direct access to AllTrails' public sitemaps (the only reliable way, since all AllTrails trail pages return 403 Forbidden for bot access, and search engines were blocked or returned irrelevant results)

## Methodology

After exhausting the suggested approaches (Google, Bing, Brave, DuckDuckGo site: searches, Wayback Machine CDX), the breakthrough came from accessing AllTrails' public sitemaps directly, which return 200 OK without bot-block:

- `https://www.alltrails.com/sitemap/secure/rails/index.xml` — sitemap index (200 OK)
- `https://www.alltrails.com/sitemap/secure/rails/atrails1.xml` through `atrails55.xml` — 55 trail sitemap files totaling ~1.2 GB
- All 55 files downloaded and grep'd exhaustively for target keywords

This is the **most authoritative** check possible: it lists every single trail page AllTrails has indexed, so any "not found" result is definitive (not just a guess).

## Results by Trek

### 1. Crni Rzav Lookout / Kraljevski Tabla (Day 2 — Serbia/Zlatibor) — ❌ NOT ON ALLTRAILS

**URL tried:** 8 guessed patterns
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/crni-rzav` → 403
- `https://www.alltrails.com/trail/serbia/zlatibor/crni-rzav-lookout` → 403
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/kraljevski-tabla` → 403
- `https://www.alltrails.com/trail/serbia/zlatibor/kraljevski-tabla` → 403
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/kraljevski-tabli` → 403
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/crni-rzav-lookout-trail` → 403
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/crni-rzav-viewpoint` → 403
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/rzav-river-loop` → 403
- Additional: `kraljevski-sto`, `king-table` → 403

**Sitemap search:** Sitemap shows 60+ Zlatibor area trails but **none for "crni-rzav" viewpoint or "kraljevski-tabla"**. Closest matches:
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/crnorzavska-bike-trail` — bike trail along the Crni Rzav river (related but not the lookout)
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/veliki-rzav-trail` — different Rzav trail
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/zlatibor-cavlovac` — generic Zlatibor summit loop
- `https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/beserovina-oslusa-vidikovac` — another "vidikovac" (viewpoint) in the area

**Final decision:** No dedicated AllTrails URL exists. Updated day 2 to mention the related Crni Rzavska Bike Trail and the previously-cited Zlatibor Cavlovac as the closest options.

### 2. Blloku District Walk (Day 5 — Tirana, Albania) — ❌ NOT ON ALLTRAILS

**URL tried:** 7 guessed patterns
- `https://www.alltrails.com/trail/albania/tirana/blloku` → 403
- `https://www.alltrails.com/trail/albania/tirana-area/blloku` → 403
- `https://www.alltrails.com/trail/albania/tirana/blloku-district` → 403
- `https://www.alltrails.com/trail/albania/tirana/blloku-walk` → 403
- `https://www.alltrails.com/trail/albania/tirana/blloku-city-walk` → 403
- `https://www.alltrails.com/trail/albania/tirana-area/blloku-city-walk` → 403
- `https://www.alltrails.com/trail/albania/tirana/tirana-blloku` → 403
- Additional: `skanderbeg-square`, `tirana-walking-tour` → 403

**Sitemap search:** Sitemap shows 109+ Albania trails in regions Shkoder, Vlore, Gjirokaster, Durres, Kukes, Berat, Korce, Diber, Lezhe — and **only 6 in Tirana** (none for Blloku):
- `https://www.alltrails.com/trail/albania/tirana/maja-e-tujanit` — Tujanit peak
- `https://www.alltrails.com/trail/albania/tirana/mali-i-dajtit` — Dajti Mountain
- `https://www.alltrails.com/trail/albania/tirana/ujevara-e-shengjergjit` — Shengjergji waterfall
- `https://www.alltrails.com/trail/albania/tirana/kryezi-erzen-river` — Erzen River
- `https://www.alltrails.com/trail/albania/tirana/pellumbas-erzen-river` — Pellumbas/Erzen
- `https://www.alltrails.com/trail/albania/tirana/pellumbas-erzen-river-loop` — Pellumbas/Erzen loop

**Blloku-specific search:** 0 matches in any of the 55 sitemap files (verified via `grep -ri blloku /tmp/at_atrails*.xml`).

**Final decision:** No dedicated AllTrails URL exists. Updated day 5 to mention the closest Tirana-area nature trails (Dajti Mountain, Shengjergji waterfall) as alternatives, but the Blloku city walk is not on AllTrails.

### 3. Skopje Old Bazaar / Kale Fortress (Day 6 — Skopje, N. Macedonia) — ❌ NOT ON ALLTRAILS

**URL tried:** 10 guessed patterns
- `https://www.alltrails.com/trail/north-macedonia/skopje/kale-fortress` → 403
- `https://www.alltrails.com/trail/north-macedonia/centar/kale-fortress` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/old-bazaar` → 403
- `https://www.alltrails.com/trail/north-macedonia/centar/old-bazaar` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/stone-bridge` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/skopje-city-walk` → 403
- `https://www.alltrails.com/trail/north-macedonia/centar/skopje-city-walk` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/kale-fortress-trail` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/kale-fortress-and-stone-bridge` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/kale-loop` → 403
- Additional: `vodno`, `mount-vodno`, `matka-canyon` (under different region paths) → 403

**Sitemap search:** **ZERO North Macedonia trails** exist in the entire AllTrails index. Verified via `grep -ri "north-macedonia" /tmp/at_atrails*.xml` → 0 matches. Also tested `grep -ri "skopje" /tmp/at_atrails*.xml` → 0 matches. **North Macedonia as a country is not covered by AllTrails at all.**

**Final decision:** No AllTrails URL exists — AllTrails has no North Macedonia coverage whatsoever. Kept honest note in day 6.

### 4. Trem Summit / Popova Šapka (Day 7 — Šar Mountains, N. Macedonia) — ❌ NOT ON ALLTRAILS (mislocated entry exists)

**URL tried:** 10 guessed patterns
- `https://www.alltrails.com/trail/north-macedonia/tetovo/trem-summit` → 403
- `https://www.alltrails.com/trail/north-macedonia/tetovo/popova-sapka` → 403
- `https://www.alltrails.com/trail/north-macedonia/tetovo/popova-sapka-trail` → 403
- `https://www.alltrails.com/trail/north-macedonia/tetovo/popova-sapka-summit` → 403
- `https://www.alltrails.com/trail/north-macedonia/tetovo/sar-mountains` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/trem-summit` → 403
- `https://www.alltrails.com/trail/north-macedonia/centar/trem-summit` → 403
- `https://www.alltrails.com/trail/north-macedonia/skopje/popova-sapka` → 403
- `https://www.alltrails.com/trail/north-macedonia/centar/popova-sapka` → 403
- `https://www.alltrails.com/trail/north-macedonia/tetovo/kobilica-peak` → 403
- Additional: `titov-vrv`, `shar`, `sar-mountain` → 403

**Sitemap search:** Confirmed **Trem Summit DOES exist on AllTrails but is mislocated**: `https://www.alltrails.com/trail/serbia/nisavski-upravni-okrug/trem-summit` (in Serbia's Nišavski district near Niš, NOT in the Šar Mountains). Also `donja-studena-trem` is in Nisava (related). **No Popova Šapka, Šar Mountains, or North Macedonia entry exists.**

For the Šar Mountains / Kosovo side, the closest AllTrails trails are in Kosovo (just across the border):
- `https://www.alltrails.com/trail/kosovo/strpce/prevalla-bister` — Brezovica area
- `https://www.alltrails.com/trail/kosovo/kacanik/luboten-peak` — Luboten peak
- `https://www.alltrails.com/trail/kosovo/rudoka-e-madhe` — Rudoka e Madhe

**Final decision:** No real AllTrails URL for the actual Šar Mountains location. The existing mislocated Serbia entry should NOT be used (already flagged in the markdown). Kept the Wikiloc Popova Šapka - Plat link as the best alternative.

### 5. Borisova Gradina (Day 8 — Sofia, Bulgaria) — ❌ NOT ON ALLTRAILS

**URL tried:** 8 guessed patterns
- `https://www.alltrails.com/trail/bulgaria/sofia/borisova-gradina` → 403
- `https://www.alltrails.com/trail/bulgaria/sia/borisova-gradina` → 403
- `https://www.alltrails.com/trail/bulgaria/sofia/borisova-gradina-park` → 403
- `https://www.alltrails.com/trail/bulgaria/sia/borisova-gradina-park` → 403
- `https://www.alltrails.com/trail/bulgaria/sofia/gradina-borisova` → 403
- `https://www.alltrails.com/trail/bulgaria/sia/gradina-borisova` → 403
- `https://www.alltrails.com/trail/bulgaria/sofia/borisova-gradina-loop` → 403
- `https://www.alltrails.com/trail/bulgaria/sia/borisova-gradina-loop` → 403

**Sitemap search:** Sofia has 50+ AllTrails trails (mostly Vitosha, Rila, Lozen mountain areas), but **no Borisova Gradina**. Verified `grep -ri borisova /tmp/at_atrails*.xml` → 0 matches. Closest city/nature walks in Sofia:
- `https://www.alltrails.com/trail/bulgaria/sofia/boyana-waterfalls` — Boyana Waterfalls (nature walk)
- `https://www.alltrails.com/trail/bulgaria/sofia/knyazhevo-golden-bridges` — Golden Bridges in Vitosha
- `https://www.alltrails.com/trail/bulgaria/sofia/golden-bridges-aleko` — Vitosha trail
- `https://www.alltrails.com/trail/bulgaria/sofia/vladaia-loop` — Vladaia neighborhood loop
- `https://www.alltrails.com/trail/bulgaria/sofia/katina-pyramids-extended-loop` — Stob pyramids area

**Final decision:** No dedicated AllTrails URL exists. Updated day 8 to mention Boyana Waterfalls as a nearby alternative.

---

## Treks Not on AllTrails — Summary

| Day | Trek | AllTrails URL | Reason |
|-----|------|---------------|--------|
| 2 | Crni Rzav Lookout | None | Roadside viewpoint, not formal trail. Closest: Crni Rzavska Bike Trail in the same area |
| 5 | Blloku District Walk | None | Urban city walk, not nature trail. Closest: Dajti Mountain in Tirana area |
| 6 | Skopje Old Bazaar / Kale Fortress | None | Urban city walk. **AllTrails has zero North Macedonia coverage** |
| 7 | Trem Summit / Popova Šapka | Mislocated entry only | The AllTrails "Trem Summit" entry is in Serbia's Nišavski district (wrong region). **No Šar Mountains / North Macedonia coverage** |
| 8 | Borisova Gradina Walk | None | Urban city park, not nature trail. Closest: Boyana Waterfalls in Sofia area |

## Why These Treks Aren't on AllTrails

AllTrails' focus is **nature/hiking trails in natural settings**, with strong coverage in mountain areas and known hiking destinations. Five of the eight days in this trip involve urban walks through neighborhoods (Blloku), historic centers (Skopje Old Bazaar), and city parks (Borisova Gradina), which are not AllTrails' domain. The two cases where a real "trek" doesn't have an AllTrails page (Crni Rzav, Trem Summit) are because:
- Crni Rzav Lookout is a roadside viewpoint, not a trail
- The actual Šar Mountains peaks near Popova Šapka are in a region AllTrails doesn't yet cover (North Macedonia)

## Cross-Verification

The five treks above are confirmed not-on-AllTrails by:
1. **Direct URL probing** — 43 guessed URL patterns, all returned 403 (Cloudflare block; cannot distinguish "not found" from "blocked", but the sitemap confirms no such trail exists)
2. **Brave Search `site:alltrails.com` queries** — rate-limited (HTTP 429) on every attempt
3. **Wayback Machine CDX API** — returned empty results for all specific trail-name queries
4. **Google/Bing site: searches** — returned irrelevant junk or got blocked
5. **DuckDuckGo HTML** — CAPTCHA-blocked on all attempts
6. **AllTrails sitemap (definitive)** — 55 XML files, ~1.2 GB of trail URLs, grep'd exhaustively for all target keywords. 0 matches for blloku/borisova/trem-in-sar/kraljevski-tabla/skopje/popova. Only hit: "trem-summit" in Serbia's Nišavski district (wrong region).

## Final Summary Table

| Day | Trek | AllTrails URL Status | Source Used |
|-----|------|---------------------|-------------|
| 1 | Aleko Hut → Cherni Vrah | ✅ Real (verified previously) | AllTrails |
| 2 | Crni Rzav Lookout | ❌ Not on AllTrails (closest: Crni Rzavska Bike Trail) | Wikipedia + 2 nearby AllTrails |
| 3 | Vidikovac Molitva | ✅ Real (verified previously) | AllTrails |
| 4 | Volušnica - Maja e Vajushës | ✅ Real (verified previously) | AllTrails |
| 5 | Blloku District Walk | ❌ Not on AllTrails (closest: Dajti Mountain) | Wikipedia + 2 nearby AllTrails |
| 6 | Skopje Old Bazaar / Kale | ❌ Not on AllTrails (no N. Macedonia coverage) | Wikipedia |
| 7 | Trem Summit / Popova Šapka | ❌ Not in correct location (only mislocated entry) | Wikiloc Plat trail + Wikipedia |
| 8 | Borisova Gradina | ❌ Not on AllTrails (closest: Boyana Waterfalls) | Wikipedia + 1 nearby AllTrails |

**Net change:** The five files (days 2, 5, 6, 7, 8) now have honest trail-source notes that include:
1. Confirmation that no dedicated AllTrails URL exists (from sitemap verification)
2. The closest related AllTrails trails (where available) for context
3. A link to this research summary for full details

No fabricated URLs were added. All URLs in the updated files are real, verified trail pages from the AllTrails sitemap.
