# Spotify Data Science Workshop

**Event:** OLC MST / NSF TCUP (Thokatakiya) Data Science Workshop
**Date:** April 24, 2026, 2–4 PM
**Facilitator:** C. Jason Tinant
**Co-facilitator:** Foster Sawyer
**Audience:** Beginning Data Scientists
**Tools:** Posit Cloud + R/tidyverse
**Format:** Zoom (full group instruction → guided exploration → breakout challenge)

---

## Status

See `02_docs/workshop-prep-summary_2026-04-23_v5.md` for current prep
status and priority checklist.

---

## Key links

See `00_admin/00_workshop-admin-overview.md` for all links
(Zoom, Posit Cloud, survey).

---

## Data

Dataset: Kaggle Spotify Tracks (~200 rows, 8 columns)
Cleaned file: `01_data/spotify_top200_cleaned.csv` — 232 obs, 8 variables
See `01_data/README.md` for column definitions and cleaning notes.

Raw and large files are excluded from Git. Force-add if needed:
`git add --force path/to/file`

---

## OSF

Project to be registered on OSF after April 24 workshop run for NSF
Year 4 milestone documentation. See root `README.md` for OSF workflow.

---

## Contents

```
00_admin/
  00_workshop-admin-overview.md   ← links only (Zoom, Posit Cloud, surveys)
  03_facilitator-guide_v2.md      ← session flow, Zoom setup, Foster's role
  05_zoom-setup_v1.md             ← chat messages, day-of responsibilities

01_data/
  kaggle_spotify-tracks-dataset.csv   ← raw (gitignored)
  spotify_top200_cleaned.csv          ← cleaned (gitignored)
  README.md                           ← column definitions, cleaning notes

02_docs/
  what-makes-a-hit_overview.md        ← public-facing curriculum (OSF upload)
  workshop-prep-summary_v5.md         ← prep steps, checklist, decisions log
  04_survey-questions_v1.md           ← Google Forms questions

03_outputs/
  what-makes-a-hit_overview.pdf       ← rendered curriculum (gitignored)
  what-makes-a-hit_slides_v1.pptx     ← slide deck

04_scripts/
  01_clean-spotify-data.R             ← data cleaning script
  02_what-makes-a-hit.R               ← student workshop script

05_references/
  datasci_workshop.jpg                ← event flyer (gitignored)
  tho-report-yr3_obj-2-1.pdf          ← grant context (gitignored)
```
