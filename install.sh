#!/usr/bin/env bash
# install.sh — Install mdbook and Rust toolchain for Balkan Euro Trip
# Usage: ./install.sh
set -e

echo "==> Balkan Euro Trip — mdbook installer"
echo ""

# Detect OS
OS="$(uname -s)"
case "$OS" in
  Linux*)   PLATFORM=linux ;;
  Darwin*)  PLATFORM=macos ;;
  MINGW*|MSYS*|CYGWIN*) PLATFORM=windows ;;
  *) echo "Unsupported OS: $OS"; exit 1 ;;
esac

echo "Detected platform: $PLATFORM"
echo ""

# Check for cargo
if ! command -v cargo >/dev/null 2>&1; then
  echo "==> Rust/Cargo not found"
  echo ""
  case "$PLATFORM" in
    linux|macos)
      echo "Installing rustup via official installer..."
      curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
      # shellcheck disable=SC1091
      source "$HOME/.cargo/env"
      ;;
    windows)
      echo "On Windows, install Rust via one of:"
      echo "  1. winget install Rustlang.Rustup"
      echo "  2. Download https://rustup.rs/ and run rustup-init.exe"
      echo ""
      echo "Then re-run this script."
      exit 1
      ;;
  esac
else
  echo "==> Rust/Cargo already installed: $(cargo --version)"
fi

echo ""
echo "==> Installing mdbook..."
cargo install mdbook --locked

echo ""
echo "==> Installing mdbook test backend (optional, for 'make test')..."
if ! command -v mdbook-test >/dev/null 2>&1; then
  cargo install mdbook-test --locked || echo "Note: mdbook-test install failed (optional backend)"
fi

echo ""
echo "==> Installation complete!"
echo ""
echo "Verify with: mdbook --version"
echo "Then run:    make serve"
