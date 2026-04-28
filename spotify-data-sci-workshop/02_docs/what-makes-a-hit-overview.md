# What Makes a Song Hit #1?

### Data Science Workshop
### Two-Hour Exercise for Beginning Data Scientists (Zoom)

**Tools:** Posit Cloud + R/tidyverse
**Level:** No prior coding required
**Format:** Full group instruction → guided exploration → breakout challenge

---

## Learning Goals

By the end of the session, participants will be able to:

- Open and run a pre-written R script in Posit Cloud
- Identify patterns in a real dataset using scatter plots
- Interpret the effect of adding color and trend lines to a visualization
- Collaboratively ask and investigate a data-driven question

---

## Materials

- Cleaned dataset: `spotify_top200_cleaned.csv` — 232 songs, 8 columns
- Pre-written R script: `02_what-makes-a-hit.R` (loaded in Posit Cloud)
- Slide deck: `what-makes-a-hit_slides_v1.pptx`
- Pre/post survey: Google Forms (links in `00_admin/00_workshop-admin-overview.md`)

### Dataset columns

| Column | Plain-language description |
|---|---|
| `track_name` | Song title |
| `artist` | Artist name |
| `genre` | Musical genre |
| `bpm` | Tempo — beats per minute |
| `energy` | Intensity (0 = calm → 1 = intense) |
| `danceability` | How easy to groove to (0–1) |
| `valence` | How happy it sounds (0 = sad → 1 = happy) |
| `popularity` | Spotify score (0 = unknown → 100 = huge hit) |

---

## Session Timeline

### 0:00–0:15 — Hook + Dataset Orientation (15 min)

Play two contrasting song clips. Ask in Zoom chat:
*"Which one do you think got more streams — and why?"*

Walk through the dataset columns in plain language. Build curiosity
before any code appears.

**Goal:** Orient participants to the data and the question.

---

### 0:15–0:20 — Posit Cloud Setup (5 min)

Paste the Posit Cloud link in Zoom chat. Everyone opens the workspace,
confirms they see RStudio, and runs `library(tidyverse)`.

No installation required — just a browser.

---

### 0:20–1:05 — Guided R Exploration (45 min)

Walk through four code blocks together. Run each block, pause, discuss.

**Block 1 — Load the data**
```r
library(tidyverse)
songs <- read_csv("spotify_top200_cleaned.csv")
head(songs)
glimpse(songs)
```
*"What do you notice? How many rows? What are the columns?"*

**Block 2 — Basic scatter plot**
```r
ggplot(data = songs,
       mapping = aes(x = energy, y = popularity)) +
  geom_point()
```
*"What pattern do you see? Does high energy mean more popularity?"*

**Block 3 — Color by genre**
```r
ggplot(data = songs,
       mapping = aes(x = energy, y = popularity, color = genre)) +
  geom_point(size = 2, alpha = 0.7)
```
*"What does adding color tell us that we couldn't see before?"*

**Block 4 — Add a trend line**
```r
ggplot(data = songs,
       mapping = aes(x = energy, y = popularity, color = genre)) +
  geom_point(size = 2, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE)
```
*"Does the line go up or down? Do you trust it? Why or why not?"*

**Key teaching point:** Each new line adds one layer of insight.
Code is a series of small, readable steps.

---

### 1:05–1:20 — Breakout Challenge (15 min)

Groups of 3–4 in Zoom breakout rooms. Each group swaps in a different
column and investigates their own question.

| Group | Swap | Question |
|---|---|---|
| A | `x = bpm` | Is tempo related to popularity differently for hip-hop vs. pop? |
| B | `x = valence` | Do happier songs tend to get more streams? |
| C | `slice_min(distance)` | Is the most average song actually popular? |

---

### 1:20–1:45 — Share Back + Discussion (25 min)

Each group shares screen for 2–3 min. Facilitator asks one follow-up
question per group. Close with:
*"What surprised you? Was there a question you couldn't figure out
how to answer?"*

---

### 1:45–2:00 — Wrap-Up + Resources (15 min)

Summarize the data science loop:
**Raw data → scatter plot → color → trend line → your question**

Resources for participants who want to go further:

- **Kaggle** — kaggle.com (free datasets and beginner notebooks)
- **TidyTuesday** — github.com/rfordatascience/tidytuesday
- **R for Data Science** — r4ds.hadley.nz (free online)
- **Posit Cloud** — posit.cloud (free R in your browser)

---

## Facilitator Notes

For full session guidance see:
`00_admin/03_facilitator-guide_2026-04-23_v2.md`

For Zoom setup and day-of chat messages see:
`00_admin/05_zoom-setup_v1.md`

**R anxiety:** Normalize confusion early —
*"Professional data scientists Google things constantly. That's not
cheating — that's the job."*

**Pacing:** The exploration can run long if participants get curious.
Cut Block 4 if needed. The breakout challenge is the priority.

**Note on the flyer:** The registration flyer mentions Google Sheets.
Acknowledge at the start: *"Forget the flyer — we're going straight
to Posit Cloud. It's actually easier."*

---

*OLC MST / NSF TCUP Thokatakiya Grant — Objective 2.1*
*First delivery: April 24, 2026 — Kyle, SD*
