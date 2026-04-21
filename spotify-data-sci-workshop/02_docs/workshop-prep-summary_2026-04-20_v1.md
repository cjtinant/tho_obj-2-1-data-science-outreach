# Data Science Outreach Workshop — Preparation Summary

**Event:** OLC MST / NSF TCUP (Thokatakiya) Data Science Workshop
**Date:** April 24, 2026, 2–4 PM
**Audience:** 9th graders (re-skinnable for TCU faculty / Tribal agency staff)
**Tools:** Google Sheets + R/RStudio
**Format:** Zoom (full group → individual exploration → breakout challenge)

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
    │   └── workshop-prep-summary.md
    ├── 03_outputs
    │   └── what-makes-a-hit_overview.pdf
    ├── 04_scripts
    │   └── NSCI253_hwk-3-1_TEMPLATE.R
    ├── 05_references
    │   ├── datasci_workshop.jpg
    │   └── tho-report-yr3_obj-2-1.pdf
    ├── 06_archive
    └── PARKING.md
```

---

## Session Summary — 2026-04-20

The following was completed in a single AI-assisted working session:

- [x] Scoped workshop preparation steps from grant and curriculum documents
- [x] Identified and resolved duplicate files via MD5 audit script
- [x] Consolidated project from 3 redundant folder structures into 1 clean tree
- [x] Merged and cleaned `README.md` (removed calendar-project boilerplate)
- [x] Filed `NSCI253_hwk-3-1_TEMPLATE.R` into `04_scripts/`
- [x] Filed `workshop-prep-summary.md` into `02_docs/`
- [x] Moved references into `spotify-data-sci-workshop/05_references/`
- [x] Dissolved `workshop-scope/` and `_delete/` folders
- [x] Generated `.gitignore` tailored to data governance requirements

---

## Step 1 — Project Structure ✅

- [x] Establish canonical folder structure
- [x] Move `NSCI253_hwk-3-1_TEMPLATE.R` to `04_scripts/`
- [x] Confirm single canonical copy of all documents
- [x] Clear `_inbox/` folders
- [?] Populate `00_admin/` with registration info, Zoom link, and event logistics

---

## Step 2 — Platform Integration

Three platforms work together: **GitHub** is the source of truth for code and
docs, **Google Drive** holds data and reference files excluded from Git, and
**OSF** ties both together with a citable DOI for NSF reporting.

### 2a — GitHub

- [x] Generate `.gitignore` (excludes: CSV data, 05_references/, rendered PDFs,
      .Rproj, .DS_Store, _inbox/, 06_archive/, PARKING.md)
- [ ] Run `git init` at project root
- [ ] Stage and commit tracked files:
  ```fish
  git add README.md .gitignore
  git add data-sci-workshop-template/
  git add spotify-data-sci-workshop/02_docs/
  git add spotify-data-sci-workshop/04_scripts/
  git commit -m "init: OLC MST data science workshop structure"
  ```
- [ ] Create **private** GitHub repo: `tho_obj-2-1-data-science-outreach`
- [ ] Push and verify
- [ ] Set to public when workshop materials are finalized

### 2b — Google Drive

Files excluded from Git live here. Mirror the repo structure for consistency.

```
OLC-MST-Workshop-Dev/              ← shared institutional Drive folder
├── 01_data/
│   └── kaggle_spotify-tracks-dataset.csv
├── 03_outputs/
│   └── what-makes-a-hit_overview.pdf
└── 05_references/
    ├── datasci_workshop.jpg
    └── tho-report-yr3_obj-2-1.pdf
```

- [ ] Create shared Drive folder: `OLC-MST-Workshop-Dev`
- [ ] Upload excluded files per structure above
- [ ] Add Drive folder URL to README.md under a "Data & References" section
- [ ] Share folder with Sawyer and Griffith

### 2c — OSF

OSF ties GitHub and Google Drive together under a single DOI, supporting FAIR
data principles and NSF milestone documentation.

**Recommended OSF project structure:**
```
OLC MST Data Science Outreach Workshop Series   ← top-level project
├── Workshop 01 — Spotify (April 2026)          ← component
│   ├── → GitHub add-on (links repo)
│   ├── → Google Drive add-on (links data folder)
│   └── Wiki: description, audience, outcomes
└── Workshop Template                           ← component
    └── Wiki: how to instantiate a new workshop
```

**Setup steps:**
- [x] OSF account exists
- [ ] Create top-level OSF project: *"OLC MST Data Science Outreach Workshop Series"*
- [ ] Add component: *"Workshop 01 — Spotify (April 2026)"*
- [ ] Connect GitHub repo via OSF GitHub add-on
- [ ] Connect Google Drive folder via OSF add-on
- [ ] Add OSF project URL to README.md
- [ ] **Register the project** after April 24 workshop — timestamped snapshot
      for NSF Year 4 reporting
- [ ] Obtain DOI once materials are stable

---

## Step 3 — Finalize the Dataset

**File:** `spotify-data-sci-workshop/01_data/kaggle_spotify-tracks-dataset.csv`

- [ ] Inspect and clean the raw Kaggle CSV (~200 rows target) — retain columns:
      title, artist, genre, BPM, energy, danceability, valence, streams
- [ ] Save cleaned version: `spotify_top200_cleaned.csv`
- [ ] Create view-only Google Sheet for students, with copy instructions
- [ ] Store data-cleaning script in `04_scripts/` and document it
- [ ] Upload cleaned CSV to Google Drive `01_data/`

---

## Step 4 — Write and Test the R Script

**Destination:** `spotify-data-sci-workshop/04_scripts/`

- [ ] Develop student-facing script (building on `NSCI253_hwk-3-1_TEMPLATE.R`)
- [ ] Structure in four commented blocks:
  1. Load data — `read.csv()`, `head()`
  2. Basic scatter plot — `ggplot2`, energy vs. streams
  3. Color by genre
  4. Add trend line — `geom_smooth(method = "lm")`
- [ ] Test on a clean RStudio install before the workshop
- [ ] Copy final version into `data-sci-workshop-template/04_scripts/`
      (with placeholders replacing Spotify-specific references)

---

## Step 5 — Build Supporting Documents

**Destination:** `spotify-data-sci-workshop/02_docs/`

- [ ] Facilitator guide — pacing notes, Zoom tips, RStudio backup plan
- [ ] Student Google Sheets handout — three guided questions
      (AVERAGEIF, bar chart by genre, scatter plot energy vs. streams)
- [ ] Slide deck — hook, column orientation, Sheets→R transition, wrap-up
- [ ] Pre/post survey — for NSF reporting and milestone documentation
- [ ] Export all finalized docs to `03_outputs/` as PDFs

---

## Step 6 — Zoom Setup

- [ ] Pre-assign breakout rooms (groups of 3–4):
  - **Group A** — Genre differences (BPM vs. popularity, hip-hop vs. pop)
  - **Group B** — Emotional valence (high valence → more streams?)
  - **Group C** — The most average song (closest to mean on every feature)
- [ ] Paste R script link in chat at the 45-minute mark
- [ ] Prepare a visible timer for breakout sessions
- [ ] Test screen-share fallback in case RStudio fails for participants

---

## Step 7 — Template Maintenance
*After April 24 workshop*

- [ ] Strip Spotify-specific content from `data-sci-workshop-template/`
- [ ] Ensure template README describes how to instantiate a new workshop
- [ ] Archive Spotify instance to `06_archive/` once OSF registration is complete
- [ ] Future datasets (e.g., OLC environmental data) slot into same structure

---

## Priority Checklist for April 24

| Task | Folder | Owner | Done? |
|---|---|---|---|
| Project structure consolidated | root | Tinant | ✅ |
| `.gitignore` generated | root | Tinant | ✅ |
| `README.md` cleaned | root | Tinant | ✅ |
| R script template filed | `04_scripts/` | Tinant | ✅ |
| GitHub repo initialized | — | Tinant | ⬜ |
| Google Drive folder created | — | Tinant/Sawyer | ⬜ |
| OSF project created | — | PI | ⬜ |
| Clean Spotify dataset | `01_data/` | Tinant | ⬜ |
| Student R script (tested) | `04_scripts/` | Griffith/Tinant | ⬜ |
| Google Sheet (view-only link) | `00_admin/` | Facilitator | ⬜ |
| Slide deck | `02_docs/` → `03_outputs/` | Facilitator | ⬜ |
| Facilitator guide | `02_docs/` → `03_outputs/` | Sawyer | ⬜ |
| Pre/post survey | `02_docs/` → `03_outputs/` | Sawyer | ⬜ |
| Zoom breakout rooms set up | `00_admin/` | Sawyer | ⬜ |
| Registration link live | `00_admin/` | Sawyer | ✅ |

---

*Last updated: 2026-04-20 — post-consolidation session*
