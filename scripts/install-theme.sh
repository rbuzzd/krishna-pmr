#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME="$ROOT/themes/hugo-felmdrav"
REPO="https://github.com/geschke/hugo-felmdrav.git"

if [ -d "$THEME/.git" ]; then
  echo "Felmdrav already installed: $THEME"
  exit 0
fi

if [ -d "$THEME" ] && [ "$(find "$THEME" -mindepth 1 -maxdepth 1 | wc -l)" -gt 0 ]; then
  echo "Theme directory is not empty: $THEME"
  echo "Remove it or run this script after a clean checkout."
  exit 1
fi

rm -rf "$THEME"
git clone --depth 1 "$REPO" "$THEME"

echo
echo "Felmdrav installed."
echo "Run: hugo server"
