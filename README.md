# Plant Briefing Archive

Daily plant briefings (COO + FSQA) from CandyCo's three Lindon plants, archived as printable HTML.

Each report is built from the 24-hour window of the eleven Information Exchange Teams chats (L1 Sollich 1/2/3, L2 ML2/ML3/FFS/Grinding/Schedule, L3 ML1/ML4/MF Matrix) and styled with the CandyCo Design System.

## Naming convention

`YYYY-MM-DD-plant-briefing.html`

## To open / print

Open the HTML file in any modern browser. Use the browser's Print dialog (Letter, no headers/footers) for a clean four-page hardcopy.

## To add a new entry

Drop the new HTML into the root of this folder, commit, and push.

```bash
git add YYYY-MM-DD-plant-briefing.html
git commit -m "Plant briefing — YYYY-MM-DD"
git push
```

## To set up the GitHub remote (one-time)

There's no GitHub MCP connector available in this Claude session yet, so the repo needs to be initialized and pushed by hand the first time. See `setup-github.sh` in this folder for a one-shot script.
