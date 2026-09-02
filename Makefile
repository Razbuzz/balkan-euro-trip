.PHONY: all serve build test clean dev deploy-gh ci install help

help:
	@echo "Balkan Euro Trip — mdbook"
	@echo ""
	@echo "Targets:"
	@echo "  install       Install mdbook and required Rust/Cargo dependencies"
	@echo "  build         Build the book (output in ./book/)"
	@echo "  serve         Serve on http://0.0.0.0:5900"
	@echo "  dev           Serve with --watch on http://0.0.0.0:5900"
	@echo "  test          Run mdbook test (Rust code blocks)"
	@echo "  clean         Remove ./book/ directory"
	@echo "  all           Build (default)"
	@echo "  deploy-gh     Build and deploy to gh-pages branch"
	@echo "  ci            Show CI/CD info"
	@echo "  help          Show this help"

all: build

install:
	@echo "Installing mdbook and required tools..."
	@if ! command -v cargo >/dev/null 2>&1; then \
		echo ""; \
		echo "Cargo (Rust) not found. Installing rustup..."; \
		echo ""; \
		echo "Linux/macOS:"; \
		echo "  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y"; \
		echo "  source \"\$\$HOME/.cargo/env\""; \
		echo ""; \
		echo "Windows (PowerShell):"; \
		echo "  winget install Rustlang.Rustup"; \
		echo "  (or download from https://rustup.rs/)"; \
		echo ""; \
		exit 1; \
	fi
	@echo "Installing mdbook (via cargo)..."
	cargo install mdbook
	@echo "Installing mdbook test backend (optional)..."
	@if ! command -v mdbook-test >/dev/null 2>&1; then \
		echo "Note: mdbook test uses a Rust backend, install with:"; \
		echo "  cargo install mdbook-test"; \
	fi
	@echo ""
	@echo "Installation complete. Verify with: mdbook --version"

serve: build
	mdbook serve

build:
	mdbook build

test:
	mdbook test

clean:
	rm -rf book/

deploy-gh: build
	@git worktree add --detach /tmp/gp pages 2>/dev/null || true
	cp -r book/* /tmp/gp/
	cd /tmp/gp && git add . && git commit -m "Deploy mdbook to gh-pages" && git push origin pages && cd -
	rm -rf /tmp/gp

ci:
	@echo "For GitHub Actions, see .github/workflows/deploy.yml"
