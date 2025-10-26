#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p "$HOME/.config"
for d in .config/*; do
  name="$(basename "$d")"
  ln -snf "$PWD/$d" "$HOME/.config/$name"
  echo "✓ linked $HOME/.config/$name"
done
