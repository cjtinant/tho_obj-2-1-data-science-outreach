# THO Obj 2-1 — Data Science Outreach Workshop Series

**Status:** Private **Author:** C. Jason Tinant w/ Claude Sonnet 4.6
**Purpose:** Provide EDS workshops in support of THO Objective 2.1

---

## Overview

| Field                       | Detail                                             |
| --------------------------- | -------------------------------------------------- |
| Objective                   | Obj 2.1 — Friday EDS gatherings and workshops      |
| Objective Lead              | J.F. Sawyer                                        |
| Workshop Lead / Facilitator | C.J. Tinant                                        |
| Supporting Personnel        | C. Griffith                                        |
| Measurement                 | Monthly R and Python EDS workshops                 |
| Audience                    | OLC students, TCU faculty, and Tribal agency staff |

This repository contains materials for the OLC MST data science outreach
workshop series, funded through the NSF TCUP Thokatakiya grant. Workshops are
designed to be reproducible and re-skinnable across datasets.

The first EDS workshop in Year 4 is scheduled for **April 24, 2026**, in
conjunction with a college/career fair hosted by Missouri Breaks, Inc., in the
community of Kyle, SD.

Dataset:
[Kaggle Spotify Tracks Dataset](https://www.kaggle.com/datasets/maharshipandya/-spotify-tracks-dataset)

---

## Quick orientation

| Folder                        | What lives here                                           |
| ----------------------------- | --------------------------------------------------------- |
| `data-sci-workshop-template/` | Reusable shell — keep in sync as Spotify instance matures |
| `spotify-data-sci-workshop/`  | Active workshop instance for April 24, 2026               |
| `workshop-scope/`             | Source and reference documents                            |
| `_staging/`                   | Files being prepped for OSF or sharing                    |
| `_inbox/`                     | Unsorted incoming files (not tracked)                     |
| `PARKING.md`                  | Backlog, pending decisions, post-workshop tasks           |

---

## Current Project Tree

```
.
├── _inbox
├── _staging
├── data-sci-workshop-template
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
└── spotify-data-sci-workshop
    ├── 00_admin
    │   └── overview.md
    ├── 01_data
    │   ├── kaggle_spotify-tracks-dataset.csv
    │   ├── README.md
    │   └── spotify_top200_cleaned.csv
    ├── 02_docs
    │   ├── what-makes-a-hit_overview.md
    │   └── workshop-prep-summary_2026-04-23_v3-1.md
    ├── 03_outputs
    │   └── what-makes-a-hit_overview.pdf
    ├── 04_scripts
    │   ├── 01_clean-spotify-data.R
    │   └── 02_what-makes-a-hit.R
    ├── 05_references
    │   ├── datasci workshop.jpg
    │   └── tho-report-yr3_obj-2-1.pdf
    ├── 06_archive
    ├── PARKING.md
    └── README.md
```

**Observation:** `spotify-data-sci-workshop` is the active instance and already
has the Kaggle dataset in `01_data/`. The `data-sci-workshop-template` is the
reusable shell — keep these in sync as the Spotify workshop matures.

### Folder structure (per workshop instance)

```
00_admin        Administrative artifacts (Zoom links, registration, logistics)
01_data         Raw (ignored) + cleaned data — large files stored in Drive
02_docs         Workshop curriculum, facilitator guides, handouts
03_outputs      Rendered artifacts (PDFs, figures) — regenerable from source
04_scripts      R scripts for student use and data cleaning
05_references   External reference documents (not tracked)
06_archive      Historical snapshots — committed after OSF registration
```

---

## Template and instance convention

`data-sci-workshop-template/` is the reusable shell.
`spotify-data-sci-workshop/` is the active instance.

Keep these in sync as the Spotify workshop matures. After the workshop:

1. Strip Spotify-specific content from the template
2. Archive the Spotify instance to `06_archive/` once OSF registration is
   complete
3. Future workshops (e.g., OLC environmental data) slot into the same structure

---

## Naming convention

- Lowercase only
- Underscores as delimiters
- Hyphens only inside ISO dates (`YYYY-MM-DD`)
- Deterministic script numbering (`NN_action_object.R`)
- Date suffixes for versioned artifacts (`_2026-04-21_v1`)

---

## Data convention

Data files are stored in institutional Google Drive, not in this repo. See
`spotify-data-sci-workshop/01_data/README.md` for the Drive link and file index.
The `.gitignore` excludes `.csv`, `.xlsx`, `.pdf`, and the `05_references/` and
`06_archive/` folders by default.

To force-track a specific file: `git add --force path/to/file`

---

## OSF integration

This project will be registered on OSF after each workshop run to support FAIR
data principles and NSF milestone reporting. Registration creates a timestamped
snapshot. A DOI will be obtained once materials are stable for citation in grant
reports and sharing with other TCUs.

See `05_osf-integration/` in `tcup-hub-colab-personal` for setup workflow.

---

## Contacts

| Person           | Role                  |
| ---------------- | --------------------- |
| C. Jason Tinant  | PI / Workshop Lead    |
| J. Foster Sawyer | CoPI / Objective Lead |
| Cami Griffith    | Senior Personnel      |

---

## Changelog

| Date       | Note                                                      |
| ---------- | --------------------------------------------------------- |
| 2026-04-07 | Initial workshop structure created                        |
| 2026-04-20 | Project consolidated and audited                          |
| 2026-04-21 | Repo initialized; merged README and gitignore conventions |
| 2026-04-24 | First workshop delivery — Kyle, SD                        |
