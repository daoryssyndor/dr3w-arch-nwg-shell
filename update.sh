#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

git pull --rebase --autostash || true
git add -A
git commit -m "update $(date -Iseconds)" || true
git push
