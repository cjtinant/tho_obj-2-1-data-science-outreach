# Data Science Outreach Workshop — Preparation Summary

**Event:** OLC MST / NSF TCUP (Thokatakiya) Data Science Workshop
**Date:** April 24, 2026, 2–4 PM
**Audience:** 9th graders (re-skinnable for TCU faculty / Tribal agency staff)
**Tools:** Google Sheets + R/RStudio
**Format:** Zoom (full group → individual exploration → breakout challenge)

---

## Current Project Tree

```
.
├── _inbox
│   ├── PARKING copy.md
│   └── README copy.md
├── data-sci-workshop-template        ← reusable shell for future workshops
│   ├── 00_admin
│   ├── 01_data
│   ├── 02_docs
│   │   └── what-makes-a-hit_overview.md
│   ├── 03_outputs
│   │   └── what-makes-a-hit_overview.pdf
│   ├── 04_scripts
│   ├── 05_references
│   ├── 06_archive
│   ├── PARKING.md
│   └── README.md
├── spotify-data-sci-workshop         ← this specific workshop instance
│   ├── _inbox
│   │   └── NSCI253_hwk-3-1_TEMPLATE.R
│   ├── 00_admin
│   ├── 01_data
│   │   └── kaggle_spotify-tracks-dataset.csv
│   ├── 02_docs
│   │   └── what-makes-a-hit_overview.md
│   ├── 03_outputs
│   │   └── what-makes-a-hit_overview.pdf
│   ├── 04_scripts
│   ├── 05_references
│   ├── 06_archive
│   ├── PARKING.md
│   └── README.md
└── workshop-scope                    ← source/reference documents
    ├── datasci_workshop.jpg
    ├── tho-report-yr3_obj-2-1.pdf
    └── what-makes-a-hit_overview.pdf
```

**Observation:** `spotify-data-sci-workshop` is the active instance and already
has the Kaggle dataset in `01_data/`. The `data-sci-workshop-template` is the
reusable shell — keep these in sync as the Spotify workshop matures.

---

## Step 1 — Tidy the Project Structure

- [x] Move `NSCI253_hwk-3-1_TEMPLATE.R` from `spotify-data-sci-workshop/_inbox/`
      to `04_scripts/` once reviewed
- [?] Populate `00_admin/` with registration info, Zoom link, and event
  logistics
- [x] Confirm `what-makes-a-hit_overview.md` is identical across both project
      folders, or establish one as the canonical source
- [x] Keep `_inbox/` folders as landing zones only — clear before each workshop
      run

---

## Step 2 — GitHub and Google Drive Setup

## Step 3 — OSF Integration

OSF (Open Science Framework, osf.io) provides persistent DOIs, version control,
and FAIR-aligned sharing — directly supporting NSF TCUP reporting requirements.

### Recommended OSF project structure

```
OLC MST Data Science Outreach Workshop Series/
├── 01_curriculum/
│   ├── facilitator-guide.pdf
│   ├── slide-deck.pptx
│   └── workshop-overview.pdf
├── 02_data/
│   ├── spotify_top200_cleaned.csv
│   └── data-cleaning-script.R
├── 03_scripts/
│   └── student-r-script.R
├── 04_handouts/
│   └── google-sheets-guide.pdf
└── 05_assessments/
    └── pre-post-survey.pdf
```

### Setup steps

- [x] Create an OSF account at osf.io (use institutional login if available)
- [ ] Start a new project: _"OLC MST Data Science Outreach Workshop Series"_
- [ ] Connect Google Drive via the OSF add-on (avoids duplicating files
      manually)
- [ ] Upload finalized materials after each workshop run
- [ ] **Register the project** after each run — creates a timestamped snapshot
      for NSF milestone documentation
- [ ] Obtain a **DOI** once materials are stable, for citation in grant reports
      and sharing with other TCUs

---

## Step 4 — Finalize the Dataset

**File:** `spotify-data-sci-workshop/01_data/kaggle_spotify-tracks-dataset.csv`

- [ ] Inspect and clean the raw Kaggle CSV (~200 rows target) — retain columns:
      title, artist, genre, BPM, energy, danceability, valence, streams
- [ ] Save a **canonical cleaned version** alongside the raw file, e.g.
      `spotify_top200_cleaned.csv`
- [ ] Create a **view-only Google Sheet** from the cleaned file for student use,
      with instructions for making a personal copy
- [ ] Store the data-cleaning script in `04_scripts/` and document it

---

## Step 5 — Write and Test the R Script

**Destination:** `spotify-data-sci-workshop/04_scripts/`

- [ ] Develop the student-facing script (building on
      `NSCI253_hwk-3-1_TEMPLATE.R`)
- [ ] Structure it in four blocks, each with plain-English comments:
  1. Load data — `read.csv()`, `head()`
  2. Basic scatter plot — `ggplot2`, energy vs. streams
  3. Color by genre
  4. Add trend line — `geom_smooth(method = "lm")`
- [ ] Test the script on a **clean RStudio install** before the workshop
- [ ] Copy the final version into `data-sci-workshop-template/04_scripts/` (with
      placeholders replacing Spotify-specific references)

---

## Step 6 — Build Supporting Documents

**Destination:** `spotify-data-sci-workshop/02_docs/`

- [ ] **Facilitator guide** — pacing notes, Zoom tips, backup plan if RStudio
      fails
- [ ] **Student Google Sheets handout** — three guided questions (AVERAGEIF, bar
      chart by genre, scatter plot energy vs. streams)
- [ ] **Slide deck** — hook, column orientation, Sheets→R transition, wrap-up +
      resources
- [ ] **Pre/post survey** — for NSF reporting and milestone documentation
- [ ] Export all finalized docs to `03_outputs/` as PDFs

---

## Step 7 — Zoom Setup

- [ ] Pre-assign breakout rooms (groups of 3–4):
  - **Group A** — Genre differences (BPM vs. popularity, hip-hop vs. pop)
  - **Group B** — Emotional valence (high valence → more streams?)
  - **Group C** — The most average song (closest to mean on every feature)
- [ ] Paste R script link in chat at the 45-minute mark
- [ ] Prepare a visible timer for breakout sessions
- [ ] Test screen-share fallback in case RStudio fails for participants

---

## Step 8 — Template Maintenance

After the Spotify workshop concludes:

- [ ] Strip all Spotify-specific content from `data-sci-workshop-template/`
- [ ] Ensure the template README describes how to instantiate a new workshop
- [ ] Archive the Spotify instance to `06_archive/` once the OSF registration is
      complete
- [ ] Future datasets (e.g., OLC environmental data) slot into the same folder
      structure

---

## Priority Checklist for April 24

| Task                          | Folder                     | Owner           | Done? |
| ----------------------------- | -------------------------- | --------------- | ----- |
| Clean Spotify dataset         | `01_data/`                 | Data lead       | ⬜    |
| Student R script (tested)     | `04_scripts/`              | Griffith/Tinant | ⬜    |
| Google Sheet (view-only link) | `00_admin/`                | Facilitator     | ⬜    |
| Slide deck                    | `02_docs/` → `03_outputs/` | Facilitator     | ⬜    |
| Facilitator guide             | `02_docs/` → `03_outputs/` | Sawyer          | ⬜    |
| Pre/post survey               | `02_docs/` → `03_outputs/` | Sawyer          | ⬜    |
| Zoom breakout rooms set up    | `00_admin/`                | Sawyer          | ⬜    |
| OSF project created           | —                          | PI              | ⬜    |
| Registration link live        | `00_admin/`                | Sawyer          | ✅    |

---
