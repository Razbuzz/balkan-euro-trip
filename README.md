# Balkan Euro Trip — 8-Day Road Itinerary

## Overview

This is a technical road-trip guide for an 8-day Balkan expedition, designed with medium-to-hard treks, strategic driving, and authentic local experiences in mind. The journey begins in Sofia, Bulgaria, and traverses through Serbia, Montenegro, Albania, North Macedonia, and back, covering roughly 1,300 km with an average of 3 hours of driving per day.

### Key Highlights

- **Sofia & Surroundings** — Capital city of Bulgaria with mountain access
- **Kosmovac, Serbia** — Mountain base with Serbian Orthodox heritage
- **Uvac Canyon & Vidikovac Molitva** — One of Europe's deepest canyons, featuring a challenging ridge hike with stunning views
- **Prokletije (Volušnica)** — The "Balkan Alps," featuring the classic Volušnica summit trek via the Grebaje Valley
- **Tirana, Albania** — Modern capital with vibrant nightlife and ancient ruins
- **Skopje, North Macedonia** — Medieval stone bridges and vibrant markets
- **Ljuboten Peak (Šar Mountains, Kosovo)** — Day trip to a dramatic 2,498m peak in the Šar range

### Technical Details

- **Dates:** September 12 — 19, 2026
- **Departure:** Arrive in Sofia at 12:00 PM (Sept 12), depart Sept 20 at 5:45 AM (car drop-off at 4:00 AM)
- **Vehicle:** Intermediate SUV (rental)
- **Daily driving:** ~3 hours average
- **Total distance:** ~1,300 km / ~23 hours of driving
- **Trip goal:** Medium-to-hard treks, city exploration, authentic meals, natural beauty

## Itinerary Structure

- Navigate through daily markdown files for detailed logistics, trail information, accommodation, meals, and local attractions
- All trails sourced from AllTrails with specific details on distances, elevation gains, and scrambling segments
- Practical information on border crossings, required vignettes, and car return logistics

## Installation

The trip guide is built with [mdBook](https://rust-lang.github.io/mdBook/) (Rust-based static site generator).

### Prerequisites

You need **Rust + Cargo** installed. If you don't have it:

**Linux / macOS:**
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
```

**Windows (PowerShell):**
```powershell
winget install Rustlang.Rustup
```
Or download the installer from https://rustup.rs/.

### Option A — One-shot install script (recommended)

After installing Rust, run:
```bash
./install.sh        # Linux/macOS / Git Bash
```
This installs `mdbook` and the optional `mdbook-test` backend via `cargo install`.

### Option B — Install via Make

```bash
make install        # Same as install.sh — installs Rust (if missing) + mdbook
```

### Option C — Manual install

```bash
cargo install mdbook --locked
cargo install mdbook-test --locked     # optional, only needed for 'make test'
```

## Usage

After installation, you can build and serve the book locally:

| Command | What it does |
|---------|-------------|
| `make help` | Show all available targets |
| `make install` | Install Rust + mdbook |
| `make build` | Build the static site into `./book/` |
| `make serve` | Serve at `http://0.0.0.0:5900` |
| `make dev` | Serve with live reload (auto-rebuild on file changes) |
| `make test` | Run mdbook test (Rust code blocks) |
| `make clean` | Remove `./book/` directory |
| `make deploy-gh` | Deploy to `gh-pages` branch |
| `make all` | Build (default target) |

### Quick start

```bash
make install        # First time only
make serve          # Browse at http://localhost:5900
```

The site is also automatically built and deployed to **GitHub Pages** via `.github/workflows/deploy.yml` on every push to `main`.