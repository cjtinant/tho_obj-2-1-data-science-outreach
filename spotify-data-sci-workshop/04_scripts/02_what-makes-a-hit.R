# 02_what-makes-a-hit.R
# =============================================================================
# AUTHOR:       C. Jason Tinant with Claude Sonnet 4.6
# CREATED:      2026-04-21
# LAST UPDATED: 2026-04-23
#
# PURPOSE:      OLC MST Data Science Outreach Workshop — April 24, 2026
#               "What Makes a Song Hit #1?"
#               NSF TCUP Thokatakiya Grant — Objective 2.1
#
# HOW TO USE:   Open this script in Posit Cloud (posit.cloud).
#               No installation required — everything runs in your browser.
#               Run each block one at a time. Read the comments as you go.
#
# INPUTS:       spotify_top200_cleaned.csv  (in your Posit Cloud project)
# OUTPUTS:      Scatter plots rendered in the Plots pane
# DEPENDENCIES: tidyverse (pre-installed in the Posit Cloud project)
#
# SESSION FLOW: See 00_admin/03_facilitator-guide_2026-04-23_v2.md
#
# VERSION NOTES:
#   v1-1  Initial draft — loaded data from Google Sheets
#   v3    Revised — CSV direct from Posit Cloud; Google Sheets removed
#   v3-1  Header trimmed to SSOT convention
# =============================================================================


# ── BLOCK 1: Load the data ───────────────────────────────────────────────────
#
# We are reading a spreadsheet of ~200 popular Spotify songs.
# The file is already in your Posit Cloud project — no download needed.
# Each row is one song. Each column is one feature of that song.

library(tidyverse)

songs <- read_csv("01_data/spotify_top200_cleaned.csv")

# Take a first look
head(songs)      # first 6 rows
glimpse(songs)   # column names and data types

# What columns do we have?
#   track_name    — song title
#   artist        — artist name
#   genre         — musical genre
#   bpm           — beats per minute (tempo)
#   energy        — intensity (0 = calm, 1 = intense)
#   danceability  — how easy is it to dance to? (0–1)
#   valence       — how happy or sad does it sound? (0 = sad, 1 = happy)
#   popularity    — Spotify popularity score (0 = unknown, 100 = huge hit)


# ── BLOCK 2: Basic scatter plot ──────────────────────────────────────────────
#
# Does more ENERGY mean more POPULARITY?
# Let's draw a scatter plot to find out.
#
# Each dot = one song
# x-axis  = energy  (0 = calm, 1 = intense)
# y-axis  = popularity (0 = unknown, 100 = huge hit)

ggplot(data = songs,
       mapping = aes(x = energy, y = popularity)) +
  geom_point() +
  labs(
    title = "Does energy predict popularity?",
    x     = "Energy (0 = calm, 1 = intense)",
    y     = "Popularity (0–100)"
  ) +
  theme_classic()

# What do you notice? Is there a pattern?
# Drop your observation in the Zoom chat before moving on.


# ── BLOCK 3: Color by genre ──────────────────────────────────────────────────
#
# Now let's color each dot by genre.
# We added one thing: color = genre
# Everything else is the same — notice how one small change adds a new layer.

ggplot(data = songs,
       mapping = aes(x = energy, y = popularity, color = genre)) +
  geom_point(size = 2, alpha = 0.7) +
  labs(
    title = "Energy vs. popularity, colored by genre",
    x     = "Energy (0 = calm, 1 = intense)",
    y     = "Popularity (0–100)",
    color = "Genre"
  ) +
  theme_classic()

# Which genre tends to have the highest energy?
# Which tends to have the lowest?
# Does genre seem to matter as much as energy?


# ── BLOCK 4: Add a trend line ────────────────────────────────────────────────
#
# A trend line shows the general direction of the relationship.
# geom_smooth() draws it. method = "lm" means a straight line.
# We now have three layers: points + colors + trend lines.
# Each new line of code adds one layer of insight.

ggplot(data = songs,
       mapping = aes(x = energy, y = popularity, color = genre)) +
  geom_point(size = 2, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, linewidth = 0.8) +
  labs(
    title = "Energy vs. popularity — trend lines by genre",
    x     = "Energy (0 = calm, 1 = intense)",
    y     = "Popularity (0–100)",
    color = "Genre"
  )

# Does the trend go up or down for each genre?
# Do you trust the trend line? Why or why not?
# Which genre surprises you the most?


# ── BREAKOUT CHALLENGE (1:05–1:20) ───────────────────────────────────────────
#
# Your group has one question to investigate.
# Use the code from Blocks 2–4 as your starting point.
# Replace "energy" with one of the columns below and see what you find.
#
# Available columns to swap in:
#   danceability  — how easy is it to dance to? (0–1)
#   valence       — how happy or sad does it sound? (0 = sad, 1 = happy)
#   bpm           — beats per minute (tempo)
#
# ── Group A — Genre differences ──────────────────────────────────────────────
#   Swap in:  x = bpm
#   Question: Is tempo related to popularity differently for hip-hop vs. pop?
#   Try adding separate trend lines and see if they point different directions.
#
# ── Group B — Emotional valence ──────────────────────────────────────────────
#   Swap in:  x = valence
#   Question: Do happier songs (high valence) tend to get more streams?
#   What does the trend line say?
#
# ── Group C — The most average song ──────────────────────────────────────────
#   Run the code below to find the song closest to the mean on every feature.
#   Question: Is the most average song actually popular?

songs |>
  mutate(
    distance = abs(energy       - mean(energy))       +
               abs(danceability - mean(danceability))  +
               abs(valence      - mean(valence))
  ) |>
  slice_min(order_by = distance, n = 1) |>
  select(track_name, artist, genre, energy, danceability, valence, popularity)


# ── WRAP-UP RESOURCES ────────────────────────────────────────────────────────
#
# Want to keep going after today?
#
#   Kaggle          — free datasets and beginner notebooks
#                     kaggle.com
#
#   TidyTuesday     — a new real-world dataset every week, with R code
#                     github.com/rfordatascience/tidytuesday
#
#   R for Data Science (free online)
#                     r4ds.hadley.nz
#
#   Posit Cloud     — free R in your browser, no install ever needed
#                     posit.cloud
