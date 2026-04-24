# Data Science Outreach Workshop — Preparation Summary
*Version 6 — 2026-04-23*

**Event:** OLC MST / NSF TCUP (Thokatakiya) Data Science Workshop
**Date:** April 24, 2026, 2–4 PM
**Facilitator:** C. Jason Tinant
**Co-facilitator:** Foster Sawyer
**Audience:** Beginning Data Scientists
**Tools:** Posit Cloud + R/tidyverse
**Format:** Zoom (full group instruction → guided exploration → breakout challenge)

*For session flow details see `00_admin/03_facilitator-guide_2026-04-23_v2.md`*
*For all links see `00_admin/00_workshop-admin-overview.md`*
*For project tree see root `README.md`*

---

## Overview

The workshop uses Zoom and Posit Cloud to eliminate installation overhead.
Participants open a browser link and are instantly in a pre-configured
RStudio environment with the script and dataset already loaded.

Key decision: Google Sheets removed from workflow after confirming
participants would not have R installed — Posit Cloud eliminates both
the install barrier and the Sheets-to-R context switch, recovering
20–25 minutes for deeper exploration.

---

## Step 1 — Project Structure ✅

- [x] Establish canonical folder structure
- [x] Single canonical copy of all documents confirmed
- [x] `_inbox/` folders cleared
- [x] `00_admin/` populated with links, facilitator guide, Zoom setup

---

## Step 2 — Platform Integration

**GitHub** → source of truth for code and docs
**OSF** → DOI and timestamped registration for NSF reporting
*(Google Drive deferred — data lives in Posit Cloud and local `01_data/`)*

### 2a — GitHub
- [x] `.gitignore` generated and tightened
- [x] `git init` at project root
- [x] Private GitHub repo created, pushed, verified
- [ ] Set public when materials are finalized

### 2b — OSF
- [x] OSF account exists
- [ ] Create top-level project: *OLC MST Data Science Outreach Workshop Series*
- [ ] Add component: *Workshop 01 — Spotify (April 2026)*
- [ ] Connect GitHub add-on
- [ ] Register after April 24 — timestamped snapshot for NSF Year 4 reporting
- [ ] Obtain DOI once materials are stable

---

## Step 3 — Posit Cloud Setup ✅

- [x] Instructor account: Metered Billing
- [x] Workspace created: *OLC MST*
- [x] Project created from tidyverse template: *What Makes a Hit?*
- [x] `spotify_top200_cleaned.csv` uploaded — 232 obs, 8 variables confirmed
- [x] `02_what-makes-a-hit.R` uploaded
- [x] tidyverse confirmed available
- [x] Script tested end-to-end
- [x] Link stored in `00_admin/00_workshop-admin-overview.md`

---

## Step 4 — Dataset ✅

- [x] Raw Kaggle CSV inspected and cleaned
      Retained: track_name, artist, genre, bpm, energy, danceability,
      valence, popularity — 232 rows
- [x] Cleaned version saved: `spotify_top200_cleaned.csv`
- [x] Uploaded to Posit Cloud
- [x] Cleaning script: `04_scripts/01_clean-spotify-data.R`

---

## Step 5 — Supporting Documents ✅

| Document | Location | Status |
|---|---|---|
| Admin overview (links) | `00_admin/00_workshop-admin-overview.md` | ✅ |
| Facilitator guide | `00_admin/03_facilitator-guide_2026-04-23_v2.md` | ✅ drafted, ⬜ reviewed |
| Zoom setup + chat messages | `00_admin/05_zoom-setup_v1.md` | ✅ |
| Curriculum overview | `02_docs/what-makes-a-hit_overview.md` | ✅ |
| Slide deck | `03_outputs/what-makes-a-hit_slides_2026-04-23_v1.pptx` | ✅ |
| Survey questions | `02_docs/04_survey-questions_2026-04-23_v1.md` | ✅ drafted, ⬜ forms built |

---

## Step 6 — Zoom Setup

- [ ] Confirm meeting scheduled: April 24, 2–4 PM
- [ ] Enable breakout rooms, chat, participant screen share
- [ ] Pre-assign breakout rooms (Groups A, B, C)
- [ ] Load chat messages from `00_admin/05_zoom-setup_v1.md`
- [ ] Test screen-share fallback

*Owner: Foster Sawyer*

---

## Step 7 — Template Maintenance
*After April 24*

- [ ] Strip Spotify-specific content from `data-sci-workshop-template/`
- [ ] Save `workshop-prep-summary` as reusable template in
      `data-sci-workshop-template/02_docs/00_workshop-prep-template.md`
- [ ] Archive Spotify instance to `06_archive/` once OSF registration complete

---

## Priority Checklist for April 24

| Task | Owner | Done? |
|---|---|---|
| Project structure + GitHub | Tinant | ✅ |
| `.gitignore` tightened | Tinant | ✅ |
| Dataset cleaned + uploaded | Tinant | ✅ |
| Posit Cloud workspace live + tested | Tinant | ✅ |
| Admin overview | Tinant | ✅ |
| Facilitator guide drafted | Tinant | ✅ |
| Zoom setup doc | Tinant | ✅ |
| Slide deck | Tinant | ✅ |
| Survey questions drafted | Tinant | ✅ |
| Facilitator guide reviewed | Foster Sawyer | ⬜ |
| Google Forms built | Foster Sawyer | ⬜ |
| Zoom meeting configured | Foster Sawyer | ⬜ |
| Breakout rooms pre-assigned | Foster Sawyer | ⬜ |
| OSF project created | Tinant | ⬜ |
| Registration link live | Foster Sawyer | ✅ |

---

*Last updated: 2026-04-23*
