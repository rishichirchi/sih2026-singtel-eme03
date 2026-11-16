#!/bin/sh
# Publish the latest page: ./update.sh [path/to/file.html]   (default: ~/Downloads/SIH2026_Singtel_EME03.html)
set -e
SRC="${1:-$HOME/Downloads/SIH2026_Singtel_EME03.html}"
cd "$(dirname "$0")"
cp "$SRC" index.html && cp "$SRC" SIH2026_Singtel_EME03.html
git add index.html SIH2026_Singtel_EME03.html
git commit -q -m "Update page $(date '+%Y-%m-%d %H:%M')" && git push -q && echo "Pushed — live in ~1 min: https://rishichirchi.github.io/sih2026-singtel-eme03/"
