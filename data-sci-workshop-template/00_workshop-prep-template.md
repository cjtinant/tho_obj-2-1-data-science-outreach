# Data Science Outreach Workshop — Preparation Template

*Copy this file into a new workshop instance folder and fill in the blanks.*
*Delete this italicized instruction line before using.*

**Event:** [INSTITUTION] / [GRANT] Data Science Workshop
**Date:** [DATE], [TIME]
**Facilitator:** [NAME]
**Co-facilitator:** [NAME]
**Audience:** Beginning Data Scientists
**Tools:** Posit Cloud + R/tidyverse
**Format:** Zoom (full group instruction → guided exploration → breakout challenge)
**Dataset:** [DATASET NAME AND SOURCE]

*For session flow details see `00_admin/03_facilitator-guide_vN.md`*
*For all links see `00_admin/00_workshop-admin-overview.md`*
*For project tree see root `README.md`*

---

## Overview

*Describe the workshop in 2–3 sentences. Include:*
- *What tool replaces spreadsheets and why*
- *What dataset is used and why it was chosen*
- *What audience-specific adaptations were made*

---

## Step 1 — Project Structure

- [ ] Establish canonical folder structure (copy from template)
- [ ] Confirm single canonical copy of all documents
- [ ] Clear `_inbox/` folders
- [ ] Populate `00_admin/` with links, facilitator guide, Zoom setup

---

## Step 2 — Platform Integration

**GitHub** → source of truth for code and docs
**OSF** → DOI and timestamped registration for NSF reporting

### 2a — GitHub
- [ ] `.gitignore` reviewed and updated for this instance
- [ ] Repo initialized or new branch created
- [ ] Initial commit pushed

### 2b — OSF
- [ ] OSF component created: *[WORKSHOP NAME]*
- [ ] GitHub add-on connected
- [ ] Register after workshop — timestamped snapshot for reporting
- [ ] Obtain DOI once materials are stable

---

## Step 3 — Posit Cloud Setup

- [ ] Workspace available: *[WORKSPACE NAME]*
- [ ] Project created from tidyverse template: *[PROJECT NAME]*
- [ ] Dataset uploaded: `[FILENAME]` — [N] obs, [N] variables confirmed
- [ ] Script uploaded: `[SCRIPT NAME]`
- [ ] tidyverse confirmed available
- [ ] Script tested end-to-end from a fresh login
- [ ] Link stored in `00_admin/00_workshop-admin-overview.md`

---

## Step 4 — Dataset

- [ ] Raw data sourced from: [SOURCE / URL]
- [ ] Columns retained: [LIST]
- [ ] Cleaned version saved: `[FILENAME]`
- [ ] Uploaded to Posit Cloud
- [ ] Cleaning script saved: `04_scripts/01_clean-[dataset]-data.R`

---

## Step 5 — Supporting Documents

| Document | Location | Status |
|---|---|---|
| Admin overview (links) | `00_admin/00_workshop-admin-overview.md` | ⬜ |
| Facilitator guide | `00_admin/03_facilitator-guide_[DATE]_v1.md` | ⬜ |
| Zoom setup + chat messages | `00_admin/05_zoom-setup_v1.md` | ⬜ |
| Curriculum overview | `02_docs/[workshop-name]_overview.md` | ⬜ |
| Slide deck | `03_outputs/[workshop-name]_slides_v1.pptx` | ⬜ |
| Survey questions | `02_docs/04_survey-questions_[DATE]_v1.md` | ⬜ |
| Google Forms built | — | ⬜ |

---

## Step 6 — Zoom Setup

- [ ] Meeting scheduled: [DATE, TIME]
- [ ] Breakout rooms enabled
- [ ] Participant screen share enabled
- [ ] Breakout rooms pre-assigned (Groups A, B, C)
- [ ] Chat messages loaded from `00_admin/05_zoom-setup_v1.md`
- [ ] Screen-share fallback tested

*Owner: [CO-FACILITATOR NAME]*

---

## Step 7 — Template Maintenance
*After the workshop*

- [ ] Strip instance-specific content from `data-sci-workshop-template/`
- [ ] Update this template with lessons learned
- [ ] Archive instance to `06_archive/` once OSF registration complete

---

## Priority Checklist

| Task | Owner | Done? |
|---|---|---|
| Project structure + GitHub | [NAME] | ⬜ |
| Dataset cleaned + uploaded | [NAME] | ⬜ |
| Posit Cloud workspace live + tested | [NAME] | ⬜ |
| Admin overview | [NAME] | ⬜ |
| Facilitator guide drafted | [NAME] | ⬜ |
| Zoom setup doc | [NAME] | ⬜ |
| Slide deck | [NAME] | ⬜ |
| Survey questions drafted | [NAME] | ⬜ |
| Facilitator guide reviewed | [CO-FACILITATOR] | ⬜ |
| Google Forms built | [CO-FACILITATOR] | ⬜ |
| Zoom meeting configured | [CO-FACILITATOR] | ⬜ |
| Breakout rooms pre-assigned | [CO-FACILITATOR] | ⬜ |
| OSF component created | [NAME] | ⬜ |
| Registration link live | [CO-FACILITATOR] | ⬜ |

---

*Template derived from: spotify-data-sci-workshop, April 24, 2026*
*Maintained by: C. Jason Tinant / OLC MST / NSF TCUP Thokatakiya*
