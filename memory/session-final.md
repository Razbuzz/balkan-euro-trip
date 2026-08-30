# Memory — Last Session Summary (Aug 30, 2026)

## What we did

1. **All 8 trails now from AllTrails** — replaced non-AllTrails treks:
   - Day 2: Crni Rzav → Zlatibor Cavlovac
   - Day 5: Blloku → Mali i Dajtit
   - Day 6: Skopje city walk → Kosovo detour, Prevalla-Bistër (Šar Mountains)
   - Day 7: Trem Summit → Ljuboten Peak (Šar Mountains, Kosovo, 2,498m)
   - Day 8: Borisova Gradina → Boyana Waterfalls (Sofia)

2. **Gas & Fuel section** added to `src/intro.md`:
   - Diesel: €160–180 total / Gasoline: €180–200
   - Per-country diesel/gasoline price table
   - Practical tips (fill in Bulgaria/Kosovo, rent diesel)

3. **Vignette purchase guide** added to `src/intro.md`:
   - Step-by-step for all 5 borders: Kalotina/Serbia, Dobrakovica/Montenegro, Božaj/Albania, Vërmica/Kosovo, Blace/N. Macedonia
   - Per-use tolls: Sozina Tunnel, Macedonian A2, Serbian A1
   - Total vignettes: ~€50–55
   - Border table updated for Kosovo detour (two extra crossings)

4. **Infrastructure added**:
   - `.gitignore` — excludes `/book/`, IDE/OS files
   - `install.sh` — cross-platform Rust/mdbook installer (Linux/macOS/Windows)
   - `Makefile` updated with `make help` target

5. **README.md** updated with:
   - Installation instructions (3 options)
   - Usage table for all make targets
   - Quick start (`make install && make serve`)
   - Fixed outdated Trek Summit → Ljuboten Peak reference

6. **make commands verified**: help, build, test, ci, clean, all, install — all pass.

7. **Committed & pushed**:
   - 58 files, +2,522 lines to `feature/book`
   - Pushed to `origin/feature/book`
   - PR link: https://github.com/Razbuzz/balkan-euro-trip/pull/new/feature/book

## Deploy to GitHub Pages

After merging PR into `main`:
1. Enable GitHub Pages: Settings → Pages → Source: `gh-pages` branch, `/ (root)`
2. `.github/workflows/deploy.yml` auto-deploys on every push to `main`
3. Site URL: `https://Razbuzz.github.io/balkan-euro-trip/`

Or manually: `make deploy-gh`

## Key facts

- AllTrails has **ZERO trails in North Macedonia** (1.2GB sitemap scan)
- All 8 AllTrails URLs verified via sitemap (not direct access — 403 to bots)
- All dead domain URLs replaced with Wikipedia/Wikiloc alternatives
- 31 valid JPEGs in `src/assets/img/`
- `mdbook build` and `mdbook test` both pass cleanly
