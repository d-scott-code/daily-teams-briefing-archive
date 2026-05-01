#!/usr/bin/env bash
# One-time setup: initialize this folder as a git repo and push to GitHub.
# Run this from inside the briefing-archive folder.
#
# Usage:
#   ./setup-github.sh <github-repo-url>
# Example:
#   ./setup-github.sh git@github.com:candyco/plant-briefing-archive.git

set -euo pipefail

if [ -z "${1:-}" ]; then
  echo "Usage: $0 <github-repo-url>"
  echo "Create the repo on github.com first (private), then pass the SSH or HTTPS URL."
  exit 1
fi

REMOTE_URL="$1"

cd "$(dirname "$0")"

if [ ! -d ".git" ]; then
  git init
  git branch -M main
fi

cat > .gitignore <<'EOF'
.DS_Store
*.swp
EOF

git add .
git commit -m "Initial archive — plant briefings (CandyCo Design System)"

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

git push -u origin main

echo ""
echo "Done. Repo initialized and pushed to: $REMOTE_URL"
echo "From now on, just run:"
echo "  git add . && git commit -m 'Plant briefing — YYYY-MM-DD' && git push"
