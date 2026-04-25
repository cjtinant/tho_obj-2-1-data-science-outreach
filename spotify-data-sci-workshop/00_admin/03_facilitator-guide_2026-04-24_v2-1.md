# Facilitator Guide — What Makes a Song Hit #1?

**Event:** OLC MST / NSF TCUP (Thokatakiya) Data Science Workshop
**Date:** April 24, 2026, 2–4 PM
**Facilitator:** C. Jason Tinant
**Co-facilitator:** Foster Sawyer
**Format:** Zoom + Posit Cloud

_Version 6-2 — 2026-04-24_

*For all links see `00_admin/00_workshop-admin-overview.md`*
*For Zoom chat messages see `00_admin/05_zoom-setup_2026-04-23_v1.md`*

---

## Before the Session — Checklist

### Facilitator (C. Jason Tinant)

- [ ] Open Posit Cloud workspace and confirm script and CSV load cleanly
- [ ] Queue two contrasting song clips for the hook
      (e.g., a high-energy pop track vs. a slow ballad)
- [ ] Have this guide open on a second screen or printed

### Co-Facilitator (Foster Sawyer)

- [ ] Confirm Zoom meeting scheduled: April 24, 2–4 PM
      — Enable: Breakout rooms
      — Enable: Chat
      — Enable: Screen share for participants
- [ ] Pre-assign breakout rooms:
      — Group A — Genre differences
      — Group B — Emotional valence
      — Group C — The most average song
- [ ] If registration list is available, assign names to rooms now
- [ ] Load chat messages from `00_admin/05_zoom-setup_2026-04-23_v1.md`
- [ ] Have this guide open on a second screen or printed

---

## Session Flow

### 0:00–0:15 — Hook + Dataset Orientation (15 min)

**Goal:** Build curiosity before any code appears.

1. Welcome everyone. Introduce yourself and OLC MST briefly.
2. Play the first song clip (high-energy). Ask in Zoom chat:
   *"What do you think — did this get more or fewer streams than a slow ballad?"*
3. Play the second clip. Let responses accumulate in chat for 1–2 min.
4. Reveal the premise: *"We have data on 232 Spotify songs. Let's find out
   what actually predicts whether a song blows up."*
5. Walk through the dataset columns in plain language:
   - `track_name` / `artist` / `genre` — what the song is
   - `bpm` — tempo (beats per minute)
   - `energy` — intensity (0 = calm, 1 = intense)
   - `danceability` — how easy is it to groove to? (0–1)
   - `valence` — how happy or sad does it sound? (0 = sad, 1 = happy)
   - `popularity` — Spotify score (0 = unknown, 100 = huge hit)

**Pacing note:** Keep this tight. Curiosity is the goal — don't over-explain.

---

### 0:15–0:20 — Posit Cloud Setup (5 min)

**Co-facilitator (Foster Sawyer):** Paste the Posit Cloud link in Zoom chat
and monitor chat for anyone who can't get in.

1. Ask everyone to open the link and confirm they see the RStudio interface.
2. Direct them to open `02_what-makes-a-hit.R` in the Files pane.
3. Ask them to run the first line: `library(tidyverse)`
4. Confirm no errors before moving on.

**If someone can't get in:** Have them follow along on the facilitator's
shared screen. They can still participate in discussion and breakout work.

**Backup:** If Posit Cloud is down entirely, facilitator shares screen and
runs the script. Participants call out what to change.

---

### 0:20–1:05 — Guided R Exploration (45 min)

Walk through the four blocks together. Run each block, pause, discuss.

#### Block 1 — Load the data (5 min)
```r
library(tidyverse)
songs <- read_csv("spotify_top200_cleaned.csv")
head(songs)
glimpse(songs)
```
Ask: *"What do you notice? How many rows? What are the columns?"*
Key teaching point: Every row is one song. Every column is one measurable
feature. This is what a dataset looks like.

#### Block 2 — Basic scatter plot (10 min)
```r
ggplot(data = songs,
       mapping = aes(x = energy, y = popularity)) +
  geom_point()
```
Ask: *"What pattern do you see? Does high energy seem to mean more streams?"*
Prompt chat responses. Normalize "I'm not sure" — that's the honest answer.
Key teaching point: A scatter plot shows relationships. Each dot is one song.

#### Block 3 — Color by genre (10 min)
```r
ggplot(data = songs,
       mapping = aes(x = energy, y = popularity, color = genre)) +
  geom_point(size = 2, alpha = 0.7)
```
Ask: *"What does adding color tell us that we couldn't see before?"*
*"Which genre clusters highest? Lowest?"*
Key teaching point: One small change — `color = genre` — adds a whole new
layer of information. Code builds in readable steps.

#### Block 4 — Add a trend line (10 min)
```r
ggplot(data = songs,
       mapping = aes(x = energy, y = popularity, color = genre)) +
  geom_point(size = 2, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE)
```
Ask: *"Does the line go up or down? Do you trust it? Why or why not?"*
*"Which genre surprises you most?"*
Key teaching point: A trend line summarizes the relationship. But data can
mislead — always ask whether the pattern makes sense.

**Buffer (10 min):** Use for questions, slower runners, or a second look at
any block that generated good discussion. Cut here if running long — the
breakout challenge is the priority.

---

### 1:05–1:20 — Breakout Challenge (15 min)

**Co-facilitator (Foster Sawyer):** Open breakout rooms and monitor chat.

Each group uses Blocks 2–4 as a starting point and swaps in a different column.

| Group | Swap | Question |
|---|---|---|
| A | `x = bpm` | Is tempo related to popularity differently for hip-hop vs. pop? |
| B | `x = valence` | Do happier songs tend to get more streams? |
| C | Run Group C code | Is the most average song actually popular? |

**Group C code** (already in the script):
```r
songs |>
  mutate(
    distance = abs(energy - mean(energy)) +
               abs(danceability - mean(danceability)) +
               abs(valence - mean(valence))
  ) |>
  slice_min(order_by = distance, n = 1) |>
  select(track_name, artist, genre, energy, danceability, valence, popularity)
```

**During breakouts:** Visit each room briefly. Ask one question.
Don't solve it for them — redirect with *"What happens if you change that
one word?"*

---

### 1:20–1:45 — Share Back + Discussion (25 min)

Bring everyone back. Each group shares screen for 2–3 min.

After each group, ask one follow-up:
- Group A: *"Did hip-hop and pop trend the same direction?"*
- Group B: *"Was the result what you expected?"*
- Group C: *"Would you have guessed that song? Why or why not?"*

Wrap the discussion with:
*"What's one thing the data showed you that surprised you?"*
*"Was there a question you wanted to ask that you couldn't figure out
how to answer?"*

---

### 1:45–2:00 — Wrap-Up + Resources (15 min)

1. Summarize the arc: raw data → scatter plot → color → trend line →
   your own question. That's the data science loop.
2. Co-facilitator pastes resources and post-survey link in chat.
3. Mention OLC MST and the Thokatakiya grant briefly.
4. Thank everyone.

---

## General Notes

**R anxiety:** Normalize confusion. Say it early and often:
*"Professional data scientists Google things constantly. That's not cheating
— that's the job."*

**Zoom chat:** Use it actively for low-stakes participation. Students who
won't speak will type. Read responses aloud so everyone hears them.

**Camera:** Keep your camera on during the hook. Mute yourself while
participants work independently.

**Pacing:** The guided exploration can run long if participants get curious —
that's a good problem. Cut Block 4 if needed. The breakout challenge is
the priority.

**Note on the flyer:** The registration flyer mentions Google Sheets.
Acknowledge at the start: *"Forget the flyer — we're going straight
to Posit Cloud. It's actually easier."*

---

## Emergency Links

| Resource | URL |
|---|---|
| Posit Cloud workspace | https://posit.cloud/spaces/780223/content/12357857 |
| Zoom registration | https://olc-edu.zoom.us/meeting/register/-92JoSvETgm7poPaxPukdA |

---

*Drafted by C. Jason Tinant with Claude Sonnet 4.6 — 2026-04-23*
*Shared with Foster Sawyer (Co-facilitator) for review*
