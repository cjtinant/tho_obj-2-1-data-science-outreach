# 🎯 What Makes a Song Hit #1?

### A Two-Hour Hands-On Data Science Exercise for Beginning Data Scientists (Zoom)

**Tools:** Google Sheets + R/RStudio **Level:** Some spreadsheet experience, no
prior coding required **Format:** Full group instruction → individual
exploration → breakout room challenge

---

## Learning Goals

By the end of the session, students will be able to: - Navigate a real dataset
and identify patterns using Google Sheets - Run a pre-written R script and
interpret the output - Describe why code-based tools scale better than
spreadsheets - Ask a data question and use a chart to support an answer

---

## Materials to Prepare in Advance

- A cleaned dataset (\~200 rows) from Kaggle's Spotify dataset, with columns:
  song title, artist, genre, BPM, energy, danceability, valence, streams
- A shared Google Sheet (view-only link, with a personal copy students can open)
- A pre-written R script in a shared Google Doc with comments on every line
- A short slide deck for the hook and transition moments
- Breakout room assignments (groups of 3–4)

---

## Session Timeline

### 0:00–0:20 — Hook & Setup (20 min)

**Facilitator actions:** - Play short clips of two contrasting songs (e.g., a
high-energy pop track vs. a slow ballad) - Ask students in chat: _"Which one do
you think got more streams — and why?"_ - Share the Google Sheet link; walk
students through the columns together - Explain what each feature means in plain
language (BPM = tempo, valence = "happiness," danceability = how easy it is to
groove to)

**Goal:** Build curiosity and orient students to the data before any analysis
begins.

---

### 0:20–0:45 — Explore in Google Sheets (25 min)

Students work through three guided questions using tools they already know.

**Question 1 — Averages** What is the average BPM of the top 10 songs by streams
vs. the bottom 10? _Hint: Use `=AVERAGEIF()`_

**Question 2 — Bar Chart** Create a bar chart showing total streams grouped by
genre. _Which genre dominates? Does that surprise you?_

**Question 3 — Scatter Plot** Plot energy (x-axis) vs. streams (y-axis). _Does
higher energy seem to mean more streams?_

**Debrief:** Ask students to drop their most surprising finding in the Zoom
chat. Spend 3–5 minutes reacting to responses together.

---

### 0:45–1:00 — Break + Transition (15 min)

- 10-minute break

**Transition talk (5 min):** _"Sheets is powerful for a few hundred rows. But
what if we had 50,000 songs, or we wanted to update our analysis every week
automatically? That's where code comes in. We're going to use R — and I promise,
you won't be writing it from scratch."_

- Paste the R script link in the chat
- Students open RStudio and copy the script in — nothing to type from scratch

---

### 1:00–1:35 — Guided R Exploration (35 min)

Walk through the pre-written script together, pausing at each block. Students
run it line by line.

**Block 1 — Load the data**

```r
songs <- read.csv("spotify_top200.csv")
head(songs)
```

_"What do you notice? How is this different from looking at Sheets?"_

**Block 2 — Basic scatter plot**

```r
library(ggplot2)
ggplot(songs, aes(x = danceability, y = streams)) +
  geom_point()
```

_"What pattern do you see? What's hard to read?"_

**Block 3 — Color by genre**

```r
ggplot(songs, aes(x = danceability, y = streams, color = genre)) +
  geom_point()
```

_"What does adding color tell us that we couldn't see before?"_

**Block 4 — Add a trend line**

```r
ggplot(songs, aes(x = danceability, y = streams)) +
  geom_point(aes(color = genre)) +
  geom_smooth(method = "lm", se = FALSE)
```

_"What does the line suggest? Do you trust it? Why or why not?"_

**Key teaching moment:** Emphasize that each new line adds one layer of insight
— code is just a series of small, readable steps.

---

### 1:35–1:50 — Mini Breakout Challenge (15 min)

Students split into groups of 3–4 in Zoom breakout rooms. Each group gets a
different question to investigate using the script as a starting point.

**Group A — Genre differences** Is tempo (BPM) related to popularity differently
for hip-hop vs. pop? Try coloring your scatter plot by genre and adding separate
trend lines.

**Group B — Emotional valence** Do "happier" songs (high valence scores) tend to
get more streams? What does the trend line say?

**Group C — The most average song** Which song in the dataset is closest to the
mean value on every feature? How would you find it?

Groups return to the main room and share their screen for 2–3 minutes each.
Facilitator asks one follow-up question per group.

---

### 1:50–2:00 — Wrap-Up (10 min)

**Discussion prompts:** - _"What's one thing the data showed you that surprised
you?"_ - _"Was there a question you wanted to ask that you couldn't figure out
how to answer?"_ - Show of hands: Did R feel scary? Useful? Both?

**Quick pointers for students who want to go further:** -
[Kaggle](https://www.kaggle.com) — free datasets and beginner notebooks -
[TidyTuesday](https://github.com/rfordatascience/tidytuesday) — a weekly
real-world R dataset challenge - _R for Data Science_ by Hadley Wickham — free
online at [r4ds.had.co.nz](https://r4ds.had.co.nz)

---

## Facilitator Notes

- **Pacing:** The Sheets section can run long if students get curious — keep an
  eye on the clock and cut Question 3 if needed.
- **R anxiety:** Normalize confusion. Remind students that professional data
  scientists Google things constantly.
- **Zoom tips:** Keep your camera on during the hook; mute yourself while
  students work independently; use the Zoom chat actively for low-stakes
  participation.
- **Backup plan:** If RStudio causes technical issues for some students, they
  can follow along on the facilitator's shared screen while others run the code.

---

_Next steps: Draft the student-facing R script, the dataset cleaning script, or
the guided Sheets handout._
