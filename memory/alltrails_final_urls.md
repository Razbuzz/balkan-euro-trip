# AllTrails URL Research Summary

**Date verified:** August 30, 2026
**Verification methods used:** Brave Search, Wayback Machine CDX API
**Search engines blocked:** DuckDuckGo (CAPTCHA), Bing (AI-generated pollution), Startpage (CAPTCHA), Google Cache (block), Qwant (no results), Ecosia (403), Mojeek (403), AllTrails itself (403 + captcha)

---

## Results by Trek

### 1. Cherni Vrah from Aleko (Day 1) — ✅ FOUND

- **URL:** https://www.alltrails.com/trail/bulgaria/sia/aleko-hut-cherni-vrah
- **Trail name:** Aleko Hut - Cherni Vrah
- **Location:** Sia/Bistritsa, Bulgaria
- **Stats:** 3.7 mi out-and-back, 1,568 ft elevation gain, Hard difficulty, 84 reviews
- **Verified via:** Brave Search
- **Match:** Perfect — matches the book's described route from Aleko hut to Cherni Vrah summit (2,290m)

---

### 2. Crni Rzav Lookout / Kraljevski Tabla (Day 2) — ❌ NOT FOUND

- **URL:** None
- **Reasoning:** These are roadside viewpoints in the Zlatibor area near Kosmovac, not formal marked trails. The book itself notes "Local viewpoint, not a formal marked trail."
- **Closest AllTrails:** [Zlatibor Cavlovac](https://www.alltrails.com/trail/serbia/zlatiborski-upravni-okrug/zlatibor-cavlovac) (26 reviews, Čajetina area, Zlatibor region)
- **Verified via:** Wayback Machine CDX search of all `alltrails.com/trail/serbia/zlatibor*` URLs; no relevant viewpoint trails found

---

### 3. Borisova Gradina Walk (Day 8) — ❌ NOT FOUND

- **URL:** None
- **Reasoning:** Borisova Gradina is an urban city park in Sofia. AllTrails focuses on natural/hiking trails. No `/trail/bulgaria/.../borisova*` URLs exist in AllTrails index.
- **Verified via:** Wayback Machine CDX search of all `alltrails.com/trail/bulgaria/sofia/*` — no park/walk entries found
- **Note:** The book correctly describes this as a "recovery walk" without a GPX route

---

### 4. Blloku District Walk (Day 5) — ❌ NOT FOUND

- **URL:** None
- **Reasoning:** Blloku is an urban neighborhood walk in Tirana. AllTrails has no `/trail/albania/tirana/*` URLs — its Albania coverage is limited to Diber, Durres, Gjirokaster, Kukes, Shkoder, and Vlore regions.
- **Verified via:** Wayback Machine CDX search of all `alltrails.com/trail/albania/*` URLs; no Tirana city walks found
- **Note:** Closest possible is [Liqeni i Tiranës](https://www.alltrails.com/trail/albania/durres/liqeni-i-tiranes) (Lake of Tirana), but this is a nature trail near the lake, not the Blloku neighborhood walk

---

### 5. Skopje Old Bazaar / Kale Fortress Walk (Day 6) — ❌ NOT FOUND

- **URL:** None
- **Reasoning:** Skopje Old Bazaar / Kale Fortress is an urban city walk. AllTrails has no `/trail/macedonia/skopje/*` URLs — its Macedonia coverage is limited to Bitola and Matka Canyon.
- **Verified via:** Wayback Machine CDX search of `alltrails.com/trail/macedonia/*` and `alltrails.com/trail/*skopje*`; no Skopje city walks found
- **Note:** The book correctly describes this as a city walk "without a GPX route"

---

### 6. Trem Summit / Popova Šapka Trail (Day 7) — ❌ NOT FOUND (mislocated entry exists)

- **URL for mislocated entry:** https://www.alltrails.com/trail/serbia/nisavski-upravni-okrug/trem-summit
- **Problem:** This entry is in Serbia's Nišavski district (near Niš), NOT the Šar Mountains in North Macedonia. The book already correctly identifies this mislocation.
- **Best available GPX:** [Popova Šapka - Plat loop on Wikiloc](https://www.wikiloc.com/hiking-trails/popova-sapka-plat-popova-sapka-62545527) (14.9km loop, 750-900m elevation gain)
- **Verified via:** Wayback Machine CDX search of `alltrails.com/trail/serbia/*` — found the Nišavski entry; no Šar Mountains or Popova Šapka entries found anywhere
- **No "Popova" or "Šar" trails** found in any AllTrails indexed URLs

---

## Summary Table

| Day | Trek | AllTrails URL | Status |
|-----|------|---------------|--------|
| 1 | Cherni Vrah from Aleko | https://www.alltrails.com/trail/bulgaria/sia/aleko-hut-cherni-vrah | ✅ Found |
| 2 | Crni Rzav / Kraljevski Tabla | None | ❌ Not a trail |
| 3 | Vidikovac Molitva | (pre-existing) | ✅ Found |
| 4 | Volušnica - Maja e Vajushës | (pre-existing) | ✅ Found |
| 5 | Blloku District Walk | None | ❌ Urban walk |
| 6 | Skopje Old Bazaar / Kale Fortress | None | ❌ Urban walk |
| 7 | Trem Summit / Popova Šapka | AllTrails entry mislocated in Niš | ❌ Not found |
| 8 | Borisova Gradina Walk | None | ❌ Urban walk |

---

## Methodology Notes

- **Brave Search** (working): Returned real AllTrails URLs with trail details including review counts, distances, and difficulty ratings. Successfully found the Aleko Hut - Cherni Vrah trail.
- **Wayback Machine CDX API** (working): Returned indexed URL lists for AllTrails domain. Used to exhaustively check for specific trail URLs by region and keyword. Key findings: no Skopje trails, no Tirana city trails, no Borisova Gradina, no Blloku, no Popova Šapka in AllTrails index.
- **DuckDuckGo HTML** (blocked): CAPTCHA verification required
- **Bing** (blocked): AI-generated content with no relevant results
- **Google Cache** (blocked): JavaScript verification required
- **AllTrails direct** (blocked): 403 Forbidden + captcha
- **All other engines** (blocked): 403 or captcha on all attempts

## Key Insight

AllTrails covers primarily nature/hiking trails in natural settings. Urban walks through city neighborhoods, bazaars, and parks are generally not represented on AllTrails. Of the 8-day trip's optional walks and city activities (Blloku, Skopje Old Bazaar, Borisova Gradina), none have AllTrails trail pages. Only the two actual mountain hikes (Cherni Vrah, Vidikovac Molitva, Volušnica - Maja e Vajushës) have confirmed AllTrails pages, plus the mislocated Trem Summit entry in the wrong country.
