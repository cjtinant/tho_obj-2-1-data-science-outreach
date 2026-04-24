# Data Science Outreach Workshop — Preparation Summary

_Version 4 — 2026-04-23_

**Event:** OLC MST / NSF TCUP (Thokatakiya) Data Science Workshop **Date:**
April 24, 2026, 2–4 PM **Audience:** 9th graders (re-skinnable for TCU faculty /
Tribal agency staff) **Tools:** Posit Cloud + R/tidyverse **Format:** Zoom (full
group instruction → guided exploration → breakout challenge)

---

## Current Project Tree

_As of 2026-04-23 — post-consolidation and GitHub init_

```
tho_obj-2-1-data-science-outreach/
├── data-sci-workshop-template    ← reusable shell for future workshops
│   ├── 00_admin
│   ├── 01_data
│   ├── 02_docs
│   ├── 03_outputs
│   ├── 04_scripts
│   ├── 05_references
│   ├── 06_archive
│   └── README.md
├── PARKING.md
├── README.md
└── spotify-data-sci-workshop     ← active workshop instance
    ├── 00_admin
    │   └── 00_workshop-admin-overview.md
    ├── 01_data
    │   ├── kaggle_spotify-tracks-dataset.csv
    │   ├── spotify_top200_cleaned.csv
    │   └── README.md
    ├── 02_docs
    │   ├── what-makes-a-hit_overview.md
    │   └── workshop-prep-summary_2026-04-23_v4.md
    ├── 03_outputs
    │   └── what-makes-a-hit_overview.pdf
    ├── 04_scripts
    │   ├── 01_clean-spotify-data.R
    │   └── 02_what-makes-a-hit.R
    ├── 05_references
    │   ├── datasci_workshop.jpg
    │   └── tho-report-yr3_obj-2-1.pdf
    ├── 06_archive
    ├── PARKING.md
    └── README.md
```

---

## Overview:

The workshop uses Zoom and **Posit Cloud** (posit.cloud) to reduce overhead with
installation and file-sharing. Students open a browser link and are instantly in
a pre-configured RStudio environment with the script and dataset already loaded.
No installation. No context switch to Sheets.

---

## Session Flow

| Time      | Activity                                                              |
| --------- | --------------------------------------------------------------------- |
| 0:00–0:15 | Hook — play song clips, Zoom chat question, orient to dataset columns |
| 0:15–0:20 | Everyone opens Posit Cloud link, confirms they are in                 |
| 0:20–1:05 | Guided R exploration — Blocks 1 through 4 (45 min)                    |
| 1:05–1:20 | Breakout challenge — Groups A, B, C                                   |
| 1:20–1:45 | Share back + discussion                                               |
| 1:45–2:00 | Wrap-up, resources, next steps                                        |

---

## Step 1 — Project Structure ✅

- [x] Establish canonical folder structure
- [x] Move R script template to `04_scripts/`
- [x] Confirm single canonical copy of all documents
- [x] Clear `_inbox/` folders
- [x] Populate `00_admin/` with Zoom and Posit Cloud links

---

## Step 2 — Platform Integration

**GitHub** → source of truth for code and docs **OSF** → DOI and timestamped
registration for NSF reporting _(Google Drive deferred — data lives in Posit
Cloud and local `01_data/`)_

### 2a — GitHub

- [x] `.gitignore` generated
- [x] `git init` at project root
- [x] Stage and commit tracked files
- [x] Create private GitHub repo, push, verify
- [ ] Set public when materials are finalized

### 2b — OSF

```
OLC MST Data Science Outreach Workshop Series   ← top-level project
├── Workshop 01 — Spotify (April 2026)          ← component
│   ├── → GitHub add-on
│   └── Wiki: description, audience, outcomes
└── Workshop Template                           ← component
    └── Wiki: how to instantiate a new workshop
```

- [x] OSF account exists
- [ ] Create top-level OSF project
- [ ] Add Workshop 01 component
- [ ] Connect GitHub add-on
- [ ] Register after April 24 — timestamped snapshot for NSF Year 4 reporting
- [ ] Obtain DOI once materials are stable

---

## Step 3 — Posit Cloud Setup ✅

- [x] Upgrade account to Instructor: Metered Billing
- [x] Create workspace: _OLC MST_
- [x] Create project from tidyverse template: _What Makes a Hit?_
- [x] Upload `spotify_top200_cleaned.csv` — 232 obs, 8 variables confirmed
- [x] Upload `02_what-makes-a-hit.R`
- [x] Confirm tidyverse available
- [x] Test script end-to-end
- [x] Posit Cloud link stored in `00_admin/00_workshop-admin-overview.md`

---

## Step 4 — Dataset ✅

- [x] Inspect and clean raw Kaggle CSV Retained: track_name, artist, genre, bpm,
      energy, danceability, valence, popularity — 232 rows
- [x] Save cleaned version: `spotify_top200_cleaned.csv`
- [x] Upload to Posit Cloud workspace
- [x] Cleaning script saved: `04_scripts/01_clean-spotify-data.R`

---

## Step 5 — Supporting Documents

**Destination:** `spotify-data-sci-workshop/02_docs/`

- [ ] Facilitator guide — pacing notes, Zoom tips, Posit Cloud backup plan
- [ ] Slide deck — hook, column orientation, wrap-up + resources
- [ ] Pre/post survey — for NSF reporting and milestone documentation
- [ ] Export finalized docs to `03_outputs/` as PDFs

---

## Step 6 — Zoom Setup

- [ ] Pre-assign breakout rooms (groups of 3–4):
  - **Group A** — Genre differences (bpm vs. popularity, hip-hop vs. pop)
  - **Group B** — Emotional valence (high valence → more streams?)
  - **Group C** — The most average song (closest to mean on every feature)
- [ ] Paste Posit Cloud link in chat at session open (0:15 mark)
- [ ] Prepare visible timer for breakout sessions
- [ ] Test screen-share fallback if Posit Cloud has issues

---

## Step 7 — Template Maintenance

_After April 24_

- [ ] Strip Spotify-specific content from `data-sci-workshop-template/`
- [ ] Ensure template README describes how to instantiate a new workshop
- [ ] Archive Spotify instance to `06_archive/` once OSF registration complete

---

## Priority Checklist for April 24

| Task                                | Owner            | Done? |
| ----------------------------------- | ---------------- | ----- |
| Project structure consolidated      | Tinant           | ✅    |
| `.gitignore` + GitHub repo          | Tinant           | ✅    |
| `README.md` cleaned                 | Tinant           | ✅    |
| Admin overview in `00_admin/`       | Tinant           | ✅    |
| Dataset cleaned + uploaded          | Tinant           | ✅    |
| R script drafted + uploaded         | Tinant           | ✅    |
| Posit Cloud workspace live + tested | Tinant           | ✅    |
| Facilitator guide                   | Tinant -> Sawyer | ⬜    |
| Slide deck                          | Tinant -> Sawyer | ⬜    |
| Pre/post survey                     | Tinant -> Sawyer | ⬜    |
| Registration link live              | Sawyer           | ✅    |
| Zoom breakout rooms set up          | Sawyer           | ⬜    |
| OSF project created                 | Tinant           | ⬜    |

---

_Last updated: 2026-04-23_
