# THO Obj 2-1 — Data Science Outreach Workshop Series

**Status:** Private
**Author:** C. Jason Tinant w/ Claude Sonnet 4.6
**Purpose:** Provide EDS workshops in support of THO Objective 2.1

---

## Overview

| Field | Detail |
|---|---|
| Objective | Obj 2.1 — Friday EDS gatherings and workshops |
| Objective Lead | J.F. Sawyer |
| Workshop Lead / Facilitator | C.J. Tinant |
| Co-facilitator | Foster Sawyer |
| Supporting Personnel | C. Griffith |
| Measurement | Monthly R and Python EDS workshops |
| Audience | OLC students, TCU faculty, and Tribal agency staff |

This repository contains materials for the OLC MST data science outreach
workshop series, funded through the NSF TCUP Thokatakiya grant. Workshops
are designed to be reproducible and re-skinnable across datasets.

The first EDS workshop in Year 4 is scheduled for **April 24, 2026**, in
conjunction with a college/career fair hosted by Missouri Breaks, Inc.,
in the community of Kyle, SD.

---

## Project Tree

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
├── README.md                     ← you are here
├── .gitignore
└── spotify-data-sci-workshop     ← active workshop instance
    ├── 00_admin
    ├── 01_data
    ├── 02_docs
    ├── 03_outputs
    ├── 04_scripts
    ├── 05_references
    ├── 06_archive
    └── README.md
```

### Folder convention (per workshop instance)

```
00_admin        Zoom links, registration, facilitator guide, logistics
01_data         Raw (gitignored) + cleaned data
02_docs         Curriculum, prep summary, handouts, surveys
03_outputs      Rendered PDFs — regenerable from source (gitignored)
04_scripts      R scripts for data cleaning and student use
05_references   External reference documents (gitignored)
06_archive      Historical snapshots — committed after OSF registration
```

---

## Template and instance convention

`data-sci-workshop-template/` is the reusable shell.
Each workshop instance (e.g., `spotify-data-sci-workshop/`) follows
the same structure. After each workshop:

1. Strip instance-specific content from the template
2. Archive the instance to `06_archive/` once OSF registration is complete
3. Future workshops slot into the same structure with a new dataset

---

## Naming convention

- Lowercase only
- Underscores as delimiters
- Hyphens only inside ISO dates (`YYYY-MM-DD`)
- Deterministic script numbering (`NN_action_object.R`)
- Date suffixes for versioned artifacts (`_2026-04-24_v1`)

---

## Data convention

Data files are stored locally in `01_data/` and in Posit Cloud.
Large or license-restricted files are excluded from Git via `.gitignore`.
See `spotify-data-sci-workshop/01_data/README.md` for file index.

To force-track a specific file: `git add --force path/to/file`

---

## OSF integration

This project will be registered on OSF after each workshop run to support
FAIR data principles and NSF milestone reporting. Registration creates a
timestamped snapshot. A DOI will be obtained once materials are stable.

---

## Contacts

| Person | Role |
|---|---|
| C. Jason Tinant | PI / Workshop Facilitator |
| J. Foster Sawyer | CoPI / Objective Lead / Co-facilitator |
| Cami Griffith | Senior Personnel |

---

## Changelog

| Date | Note |
|---|---|
| 2026-04-07 | Initial workshop structure created |
| 2026-04-20 | Project consolidated and audited |
| 2026-04-21 | Repo initialized; README and gitignore established |
| 2026-04-23 | Posit Cloud workspace live; slide deck and facilitator guide complete |
| 2026-04-24 | First workshop delivery — Kyle, SD |
