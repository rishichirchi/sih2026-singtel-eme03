#!/bin/sh
# Publish the latest page: ./update.sh [path/to/file.html]   (default: ~/Downloads/SIH2026_Sally_Pitch.html)
set -e
SRC="${1:-$HOME/Downloads/SIH2026_Sally_Pitch.html}"
cd "$(dirname "$0")"
cp "$SRC" index.html && cp "$SRC" SIH2026_Sally_Pitch.html
git add index.html SIH2026_Sally_Pitch.html
git commit -q -m "Update page $(date '+%Y-%m-%d %H:%M')" && git push -q && echo "Pushed — live in ~1 min: https://rishichirchi.github.io/sih2026-singtel-eme03/"
