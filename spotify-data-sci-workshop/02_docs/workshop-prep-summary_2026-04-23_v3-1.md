# Data Science Outreach Workshop — Preparation Summary
*Version 3 — 2026-04-23*

**Event:** OLC MST / NSF TCUP (Thokatakiya) Data Science Workshop
**Date:** April 24, 2026, 2–4 PM
**Audience:** 9th graders (re-skinnable for TCU faculty / Tribal agency staff)
**Tools:** Posit Cloud + R/tidyverse
**Format:** Zoom (full group instruction → guided exploration → breakout challenge)

---

## Current Project Tree
*As of 2026-04-20 — post-consolidation*

```
tho_obj-2-1-data-science-outreach_2026-05-24/
├── data-sci-workshop-template    ← reusable shell for future workshops
│   ├── 00_admin
│   ├── 01_data
│   ├── 02_docs
│   ├── 03_outputs
│   ├── 04_scripts
│   ├── 05_references
│   └── 06_archive
├── README.md                     ← root-level, public-facing
├── .gitignore                    ← excludes data, references, outputs
└── spotify-data-sci-workshop     ← active workshop instance
    ├── _inbox
    ├── 00_admin
    ├── 01_data
    │   └── kaggle_spotify-tracks-dataset.csv
    ├── 02_docs
    │   ├── what-makes-a-hit_overview.md
    │   └── workshop-prep-summary_2026-04-20_v2.md
    ├── 03_outputs
    │   └── what-makes-a-hit_overview.pdf
    ├── 04_scripts
    │   ├── NSCI253_hwk-3-1_TEMPLATE.R
    │   └── 02_what-makes-a-hit_v3.R
    ├── 05_references
    │   ├── datasci_workshop.jpg
    │   └── tho-report-yr3_obj-2-1.pdf
    ├── 06_archive
    └── PARKING.md
```

---

## Key Decision: Posit Cloud replaces Google Sheets

Students are bringing their own machines without R or Positron installed.
**Posit Cloud** (posit.cloud) solves this entirely — students open a browser
link and are instantly in a pre-configured RStudio environment with the script
and dataset already loaded. No installation. No context switch to Sheets.

This recovers 20–25 minutes previously allocated to the Google Sheets section
and allows deeper R exploration.

---

## Revised Session Flow

| Time | Activity |
|---|---|
| 0:00–0:15 | Hook — play song clips, Zoom chat question, orient to dataset columns |
| 0:15–0:20 | Everyone opens Posit Cloud link, confirms they are in |
| 0:20–1:05 | Guided R exploration — Blocks 1 through 4 (45 min, more breathing room) |
| 1:05–1:20 | Breakout challenge — Groups A, B, C |
| 1:20–1:45 | Share back + discussion |
| 1:45–2:00 | Wrap-up, resources, next steps |

---

## Session Summary — 2026-04-20

Completed in a single AI-assisted working session:

- [x] Scoped workshop preparation steps from grant and curriculum documents
- [x] Identified and resolved duplicate files via MD5 audit script
- [x] Consolidated project from 3 redundant folder structures into 1 clean tree
- [x] Merged and cleaned `README.md`
- [x] Filed `NSCI253_hwk-3-1_TEMPLATE.R` into `04_scripts/`
- [x] Moved references into `spotify-data-sci-workshop/05_references/`
- [x] Generated `.gitignore` tailored to data governance requirements
- [x] Drafted R script `02_what-makes-a-hit_v3.R` for Posit Cloud delivery

---

## Step 1 — Project Structure ✅

- [x] Establish canonical folder structure
- [x] Move R script template to `04_scripts/`
- [x] Confirm single canonical copy of all documents
- [x] Clear `_inbox/` folders
- [ ] Populate `00_admin/` with Zoom link, Posit Cloud link, and event logistics

---

## Step 2 — Platform Integration

**GitHub** → source of truth for code and docs
**Google Drive** → data files and references excluded from Git
**OSF** → DOI and timestamped registration for NSF reporting

### 2a — GitHub
- [x] `.gitignore` generated
- [ ] `git init` at project root
- [ ] Stage and commit tracked files
- [ ] Create private GitHub repo, push, verify
- [ ] Set public when materials are finalized

### 2b — Google Drive
```
OLC-MST-Workshop-Dev/
├── 01_data/
│   └── kaggle_spotify-tracks-dataset.csv
├── 03_outputs/
│   └── what-makes-a-hit_overview.pdf
└── 05_references/
    ├── datasci_workshop.jpg
    └── tho-report-yr3_obj-2-1.pdf
```
- [ ] Create shared Drive folder: `OLC-MST-Workshop-Dev`
- [ ] Upload excluded files
- [ ] Add Drive URL to README.md
- [ ] Share with Sawyer and Griffith

### 2c — OSF
```
OLC MST Data Science Outreach Workshop Series   ← top-level project
├── Workshop 01 — Spotify (April 2026)          ← component
│   ├── → GitHub add-on
│   ├── → Google Drive add-on
│   └── Wiki: description, audience, outcomes
└── Workshop Template                           ← component
    └── Wiki: how to instantiate a new workshop
```
- [x] OSF account exists
- [ ] Create top-level OSF project
- [ ] Add Workshop 01 component
- [ ] Connect GitHub and Google Drive add-ons
- [ ] Register after April 24 — timestamped snapshot for NSF Year 4 reporting
- [ ] Obtain DOI once materials are stable

---

## Step 3 — Posit Cloud Setup

- [X] Upgrade account to Instructor: Metered Billing
- [X] Create a new Posit Cloud workspace: *"OLC MST"*
- [X] Create a New Project uisng New Project from Template: Data Analysis in R
      with the tidyverse -- Data Analysis in R with the tidyverse.
      *The tidyverse is a streamlined set of packages that make it easy to perform*
      *exploratory analysis with R, including the popular dplyr for data*
      *manipulation and ggplot2 for data visualization. This template includes*
      *all the tidyverse packages along with sample code to get up and running*
      *with an efficient data analysis workflow.*
      Name the project *"What Makes a Hit?"*
- [X] Upload `spotify_top200_cleaned.csv` to the workspace
- [X] Upload `02_what-makes-a-hit_v3.R` to the workspace
- [X] Confirm `tidyverse` is available (pre-installed on Posit Cloud)
- [X] Test full script end-to-end from a **fresh login** before April 24
- [ ] Generate shareable workspace link and store in `00_admin/`

---

## Step 4 — Finalize the Dataset

**File:** `spotify-data-sci-workshop/01_data/kaggle_spotify-tracks-dataset.csv`

- [X] Inspect and clean the raw Kaggle CSV (~200 rows target)
      Retain: track_name, artist, genre, bpm, energy, danceability,
      valence, popularity
- [X] Save cleaned version: `spotify_top200_cleaned.csv`
- [X] Upload cleaned CSV to Posit Cloud workspace
- [?]  Store data-cleaning script in `04_scripts/` and document it

---

## Step 5 — Build Supporting Documents

**Destination:** `spotify-data-sci-workshop/02_docs/`

- [ ] Facilitator guide — pacing notes, Zoom tips, Posit Cloud backup plan
- [ ] Slide deck — hook, column orientation, wrap-up + resources
- [ ] Pre/post survey — for NSF reporting and milestone documentation
- [ ] Export all finalized docs to `03_outputs/` as PDFs

---

## Step 6 — Zoom Setup

- [ ] Pre-assign breakout rooms (groups of 3–4):
  - **Group A** — Genre differences (bpm vs. popularity, hip-hop vs. pop)
  - **Group B** — Emotional valence (high valence → more streams?)
  - **Group C** — The most average song (closest to mean on every feature)
- [ ] Paste Posit Cloud link in chat at session open
- [ ] Prepare a visible timer for breakout sessions
- [ ] Test screen-share fallback if Posit Cloud has issues for any student

---

## Step 7 — Template Maintenance
*After April 24*

- [ ] Strip Spotify-specific content from `data-sci-workshop-template/`
- [ ] Ensure template README describes how to instantiate a new workshop
- [ ] Archive Spotify instance to `06_archive/` once OSF registration is complete

---

## Priority Checklist for April 24

| Task | Folder | Owner | Done? |
|---|---|---|---|
| Project structure consolidated | root | Tinant | ✅ |
| `.gitignore` generated | root | Tinant | ✅ |
| `README.md` cleaned | root | Tinant | ✅ |
| R script v3 drafted | `04_scripts/` | Tinant | ✅ |
| Clean Spotify dataset | `01_data/` | Tinant | ⬜ |
| Posit Cloud workspace created | — | Tinant | ⬜ |
| Posit Cloud link tested (fresh login) | `00_admin/` | Tinant | ⬜ |
| Slide deck | `02_docs/` → `03_outputs/` | Facilitator | ⬜ |
| Facilitator guide | `02_docs/` → `03_outputs/` | Sawyer | ⬜ |
| Pre/post survey | `02_docs/` → `03_outputs/` | Sawyer | ⬜ |
| Zoom breakout rooms set up | `00_admin/` | Sawyer | ⬜ |
| GitHub repo initialized | — | Tinant | ⬜ |
| Google Drive folder created | — | Tinant/Sawyer | ⬜ |
| OSF project created | — | PI | ⬜ |
| Registration link live | `00_admin/` | Sawyer | ✅ |

---

*Last updated: 2026-04-23 — Posit Cloud replaces Google Sheets; session flow revised*
