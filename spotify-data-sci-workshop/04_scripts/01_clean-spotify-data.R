# 01_clean-spotify-data.R
# =============================================================================
# AUTHOR:       C. Jason Tinant with Claude Sonnet 4.6
# CREATED:      2026-04-21
# LAST UPDATED: Check Git
#
# PURPOSE:      Clean raw Kaggle Spotify dataset for workshop use. The input
#               data [Kaggle Spotify Tracks Dataset] downloaded from
#               https://www.kaggle.com/datasets/maharshipandya/-spotify-tracks-dataset
#               downloaded on 2026-04-17.
#
# HOW TO USE:
#
# FIRST RUN:
#
# INPUTS:       01_data/kaggle_spotify-tracks-dataset.csv
#
# OUTPUTS:      01_data/spotify_top200_cleaned.csv
#
# DEPENDENCIES: here, tidyverse
#
# VERSION NOTES:
#
# NEXT STEPS:
# =============================================================================

library(here)
library(tidyverse)

# ── Load raw data ───────────────────────────────────────────

i_am("04_scripts/01_clean-spotify-data.R")
raw <- read_csv("../01_data/kaggle_spotify-tracks-dataset.csv")

cat("Raw dataset:", nrow(raw), "rows,", ncol(raw), "columns\n")
glimpse(raw)

# ── Filter to workshop-friendly genres ──────────────────────
# Six genres with good variety and student recognition

genres_keep <- c("pop", "hip-hop", "country", "r-n-b", "rock", "latin")

df <- raw |>
  filter(track_genre %in% genres_keep)

# ── Select and rename columns ───────────────────────────────

df <- df |>
  select(
    track_name,
    artist    = artists,
    genre     = track_genre,
    popularity,
    energy,
    danceability,
    valence,
    bpm       = tempo
  ) |>
  mutate(
    across(c(energy, danceability, valence), \(x) round(x, 3)),
    bpm = round(bpm, 1)
  )

# ── Remove duplicates, keep highest popularity per track ────

df <- df |>
  arrange(desc(popularity)) |>
  distinct(track_name, artist, .keep_all = TRUE)

# ── Sample top 33 tracks per genre (~200 rows total) ────────

df_clean <- df |>
  group_by(genre) |>
  slice_max(order_by = popularity, n = 33) |>
  ungroup() |>
  arrange(genre, desc(popularity))

cat("\nCleaned dataset:", nrow(df_clean), "rows\n")
cat("Tracks per genre:\n")
print(count(df_clean, genre))

# ── Save ─────────────────────────────────────────────────────

write_csv(df_clean, "../01_data/spotify_top200_cleaned.csv")
cat("\nSaved to 01_data/spotify_top200_cleaned.csv\n")
