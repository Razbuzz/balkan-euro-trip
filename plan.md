# Plan: 8-Day Balkan Road Trip (Sofia Loop)

## Overview

This is the master orchestration plan for a technical 8-day Balkan road trip covering **~1,300 km / ~23 hours of driving** across 5 countries, designed for medium-to-hard treks, strategic city exploration, and authentic local experiences.

## Trip Logistics

- **Dates:** Sept 12 – Sept 19, 2026 (8 active days on the ground)
- **Arrival:** Sofia (SOF) Sept 12 at 12:00 PM
- **Departure:** Sofia (SOF) Sept 20 at 5:45 AM (car return 4:00 AM)
- **Vehicle:** Intermediate SUV
- **Daily drive:** ~3 hours average
- **Total drive:** ~23 hours / 1,300 km
- **Trip goal:** Medium-to-hard treks, some light city activities, nature focus, fun attractions

## Waypoints (5 countries)

1. **Sofia, Bulgaria** (Start)
2. **Kosmovac, Serbia** (Day 2)
3. **Vidikovac Molitva, Serbia** (Uvac Canyon, Day 3)
4. **Volušnica, Montenegro** (Prokletije NP, Day 4)
5. **Tirana, Albania** (Day 5)
6. **Skopje, North Macedonia** (Day 6-7)
7. **Sofia, Bulgaria** (End, Day 8)

## Day-by-Day Plan

| Day | Date | Route | Focus | Drive |
|-----|------|-------|-------|-------|
| 1 | Sept 12 | Sofia arrival | City intro, gear prep | — |
| 2 | Sept 13 | Sofia → Kosmovac | Border: Kalotina | ~3h |
| 3 | Sept 14 | Kosmovac → Uvac | Vidikovac Molitva + boat | ~1.5h |
| 4 | Sept 15 | Uvac → Volušnica | Volušnica summit | ~2.5h |
| 5 | Sept 16 | Volušnica → Tirana | Border + city | ~3.5h |
| 6 | Sept 17 | Tirana → Skopje | Long drive, city | ~5h |
| 7 | Sept 18 | Skopje + Trem Summit | Trem 2,011m day-trip | ~3h |
| 8 | Sept 19 | Skopje → Sofia | Drive, 4 AM return prep | ~4h |

## Multi-Agent Deployment

The trip was planned using a multi-agent orchestration model. Eight sub-agents were deployed in parallel, each with a dedicated day itinerary. Each agent received the same comprehensive prompt template and produced a daily markdown file with:

- **Logistics:** Start/destination, ETA, driving time, distance, border crossings
- **Trails:** AllTrails-sourced hikes with exact distances, elevation gains, scrambling notes
- **Accommodations:** Search criteria + 2-3 example Airbnb listings with deep links
- **Meals:** High-quality local food recommendations
- **Activities:** Backup/light attractions
- **Links & Images:** Citation links and image placeholders

### Agent Assignments

| Agent # | Day File | Focus Area |
|---------|----------|------------|
| Agent-01 | `day1_sofia_arrival.md` | Sofia city intro, gear prep |
| Agent-02 | `day2_sofia_to_kosmovac.md` | Border crossing guide |
| Agent-03 | `day3_kosmovac_to_uvac.md` | Vidikovac Molitva + boat |
| Agent-04 | `day4_uvac_to_vulusnica.md` | Prokletije summit trek |
| Agent-05 | `day5_vulusnica_to_tirana.md` | Albania border + Tirana |
| Agent-06 | `day6_tirana_to_skopje.md` | Long drive + city |
| Agent-07 | `day7_skopje_trem_summit.md` | Trem Summit day trip |
| Agent-08 | `day8_skopje_to_sofia.md` | Return + 4 AM car return |

## Border Crossing & Vignette Matrix

| Border | Direction | Vignette | Est. Wait |
|--------|-----------|----------|-----------|
| Kalotina (BG-RS) | Sofia → Kosmovac | RS €15 (7-day) | 15-45 min |
| Dobrakovica (RS-ME) | Uvac → Volušnica | ME €7 (7-day) | 20-40 min |
| Božaj (ME-AL) | Volušnica → Tirana | AL €8 (optional) | 20-50 min |
| Qafë Thanë (AL-MK) | Tirana → Skopje | MK €15 (7-day) | 20-50 min |

## Key Treks (from AllTrails)

| Day | Trail | Distance | Elevation | Difficulty |
|-----|-------|----------|-----------|------------|
| 3 | Vidikovac Molitva | 3.5 km | +350m | Hard |
| 3 | Uvac Boat Tour | 1-2 hr | — | Easy |
| 4 | Volušnica via Grebaje | 12 km | +1,100m | Hard |
| 7 | Trem Summit | 10 km | +900m | Hard |

## Final Night Logistics (Day 8)

- **Stay:** Central Sofia (25 min to SOF)
- **Wake:** 3:00 AM
- **Car return:** 4:00 AM at SOF Terminal 1
- **Flight:** 5:45 AM Sept 20

## mdBook Structure

```
balkan-euro-trip/
├── book.toml
├── Makefile
├── README.md
├── plan.md (this file)
├── src/
│   ├── SUMMARY.md
│   ├── intro.md
│   ├── kit.md
│   ├── day1_sofia_arrival.md
│   ├── day2_sofia_to_kosmovac.md
│   ├── day3_kosmovac_to_uvac.md
│   ├── day4_uvac_to_vulusnica.md
│   ├── day5_vulusnica_to_tirana.md
│   ├── day6_tirana_to_skopje.md
│   ├── day7_skopje_trem_summit.md
│   └── day8_skopje_to_sofia.md
├── .github/workflows/deploy.yml
├── assets/
│   ├── img/
│   ├── maps/
│   └── gpx/
└── memory/
```

## Build & Serve Commands

```bash
make build          # Build the mdbook
make serve          # Serve on 0.0.0.0:5900 (Tailscale accessible)
make dev            # Watch mode
make test           # Test
make clean          # Clean
make deploy-gh      # Deploy to GitHub Pages
```

## GitHub Pages Deployment

GitHub Actions workflow at `.github/workflows/deploy.yml` auto-deploys the built mdbook to the `gh-pages` branch on every push to `main`. The site will be available at `https://<username>.github.io/balkan-euro-trip/`.