# NSci253_hwk-3-1_YOUR-NAME_YYYY-MM-DD.R
# =============================================================================
# AUTHOR:       YOUR NAME
# CREATED:      YYYY-MM-DD
# LAST UPDATED: YYYY-MM-DD
#
# PURPOSE:      Homework 3-1: Joining Data, Map Making, and EDA
#               Challenge questions from R4WRDS Modules 11, 12, and 13.
#
# HOW TO USE:   Work through each section sequentially.
#               - Written responses go as comments starting with # Prob X.
#               - Replace << YOUR CODE HERE >> with working R code.
#               - Save and submit as NSci253_hwk-3-1_YOURNAME_YYYY-MM-DD.R
#
# MODULES:
#   Module 11 -- Joining Data
#                https://r4wrds.netlify.app/intro/m_joins
#   Module 12 -- sf and Map Making in R
#                https://r4wrds.netlify.app/intro/m_intro_mapmaking
#   Module 13 -- Exploratory Data Analysis
#                https://r4wrds.netlify.app/intro/m_exploratory_da
#
# DATA INPUTS:
#   data/gwl/stations.csv
#   data/gwl/measurements_sep.csv
#   data/gwl/perforations.csv
#   data/calenviroscreen/ces3results_data.csv.zip
#   data/shp/sac_county.zip
#   data/gwl/stations_sac.csv
#   data/sacramento_gw_data_w_calenviro.rda
#
# OUTPUTS:
#   results/sac_well_use_map.png
#
# KEY PACKAGES: tidyverse, sf, mapview, ggspatial, janitor, here
#
# =============================================================================

# -- Load Libraries ----
library(tidyverse)
library(sf)
library(mapview)
library(ggspatial)
library(janitor)
library(here)

here::i_am("NSci253_hwk-3-1_YOUR-NAME_YYYY-MM-DD.R")


# =============================================================================
# PART I: JOINING DATA (Module 11)
# =============================================================================

# -- Problem 1: Find the Commonalities ----------------------------------------

# 1a. Load the three groundwater datasets
gw_stations     <- read_csv("data/gwl/stations.csv")
gw_measurements <- read_csv("data/gwl/measurements_sep.csv")
gw_perf         <- read_csv("data/gwl/perforations.csv")

# Inspect each dataset
glimpse(gw_stations)
glimpse(gw_measurements)
glimpse(gw_perf)

# 1b. List all column names shared across at least two datasets:
# # Prob 1b.

# 1c. Use janitor::compare_df_cols() to check data types of shared columns.
#     Do the types match? Answer in a comment below.

compare_df_cols(<< YOUR CODE HERE >>)

# # Prob 1c.


# -- Problem 2: Joining Groundwater Data --------------------------------------

# 2a. Left join gw_measurements to gw_stations using shared column(s).
gw_joined <- << YOUR CODE HERE >>

# 2b. Compare dimensions of gw_joined vs gw_measurements.
dim(gw_measurements)
dim(gw_joined)

# # Prob 2b. (explain the difference in rows/columns)

# 2c. Pipe gw_joined into a second left_join() with gw_perf.
gw_full <- gw_joined %>%
  << YOUR CODE HERE >>

dim(gw_full)

# 2d. How many stations have no perforation data (NA in TOP_PRF)?
<< YOUR CODE HERE >>

# # Prob 2d.


# -- Problem 3: Joining to CalEnviroscreen ------------------------------------

# 3a. Load the CalEnviroscreen data (read zip directly)
calenviro <- read_csv("data/calenviroscreen/ces3results_data.csv.zip")

# Inspect column names to find the county crosswalk
names(calenviro) %>% head(10)
names(gw_stations)

# 3b. Which columns link the two datasets? (note: different names!)

# 3c. Left join gw_stations to calenviro by county (different column names).
gw_ces <- << YOUR CODE HERE >>

dim(gw_ces)

# 3d. Find county names in gw_stations that have NO match in calenviro.
<< YOUR CODE HERE >>

# # Prob 3d. (report findings and explain why mismatches might occur)


# =============================================================================
# PART II: MAP MAKING (Module 12)
# =============================================================================

# Set up spatial data (same workflow as live-code script from class)
unzip("data/shp/sac_county.zip", exdir = "data/shp/sac")

sac      <- st_read("data/shp/sac/sac_county.shp", quiet = TRUE)
stations <- read_csv("data/gwl/stations_sac.csv") %>%
  st_as_sf(coords = c("LONGITUDE", "LATITUDE"), crs = 4269, remove = FALSE)

# Reproject sac to match stations
sac <- st_transform(sac, crs = st_crs(stations))
identical(st_crs(sac), st_crs(stations))  # should be TRUE


# -- Problem 4: Challenge 1 — Interactive Map by Well Use ---------------------

# 4a. Build a mapview of sac + stations colored by WELL_USE.
#     Add burst = TRUE to the stations layer.
<< YOUR CODE HERE >>

# # Prob 4b. (2-3 sentences: what does burst = TRUE do?)

# # Prob 4c. (1-2 sentences: where do irrigation vs residential wells cluster?)


# -- Problem 5: Challenge 2 — Fix the Bug and Map Well Use -------------------

# 5a. Copy the buggy code below, fix it, and explain the bug in a comment.

ggplot() %>%          # bug is here -- fix this line
  geom_sf(data = sac) +
  geom_sf(data = stations)

# # Prob 5a. (explain the bug)

# 5b. Modify the fixed code to color stations by WELL_USE (discrete).
#     Use scale_color_viridis_d(). Add north arrow, scale bar, title, labels.
p_well_use <- << YOUR CODE HERE >>

p_well_use

# 5c. Export the final map to results/
ggsave("results/sac_well_use_map.png", p_well_use, height = 6, width = 8)


# =============================================================================
# PART III: EXPLORATORY DATA ANALYSIS (Module 13)
# =============================================================================

# Load the prepared joined dataset
load("data/sacramento_gw_data_w_calenviro.rda")
# This loads an object called "gwl"


# -- Problem 6: Inspect and Describe the Dataset ------------------------------

# 6a. Inspect the dataset
class(gwl)
dim(gwl)
names(gwl)

# # Prob 6b. (2-3 sentences: unit of observation, time period, variable types)

# 6c. Summarize WELL_DEPTH, WSE, and CES 3.0 Score
summary(gwl$WELL_DEPTH)
summary(gwl$WSE)
summary(gwl$`CES 3.0 Score`)

# # Prob 6c. (report min, median, max, and NAs for each column)


# -- Problem 7: Well Depth by Well Use ----------------------------------------

# 7a. Calculate median and mean WELL_DEPTH per WELL_USE category.
depth_summary <- << YOUR CODE HERE >>

depth_summary

# 7b. Create a boxplot of WELL_DEPTH by WELL_USE with flipped axes.
<< YOUR CODE HERE >>

# # Prob 7c. (2-3 sentences: deepest and shallowest well use, does it make sense?)


# -- Problem 8: Groundwater Level Through Time --------------------------------

# 8a. Convert MSMT_DATE to date class and extract year.
gwl <- gwl %>%
  mutate(
    MSMT_DATE = as.Date(MSMT_DATE),
    year      = lubridate::year(MSMT_DATE)
  )

# 8b. Calculate mean WSE per year.
wse_annual <- << YOUR CODE HERE >>

wse_annual

# 8c. Plot the annual mean WSE as a line + point time series.
<< YOUR CODE HERE >>

# # Prob 8d. (2-3 sentences: trend direction and possible explanation)
