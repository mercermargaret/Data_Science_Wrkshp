# create figures for presentation
# margaret mercer
# sept 24, 2024

# load packages
library(tidyverse)
library(ggplot2)
library(sf)

bridges <- st_read("../bobcat_chapter/data/Bridges_As_Lines")
roads <- st_read("../bobcat_chapter/data/Roadmap_Wrangled")
bobcats <- read.csv("../bobcat_chapter/data/bobcat_locs_all.csv")
# Convert the data frame to an sf object
bobcats_sf <- st_as_sf(bobcats, coords = c("location.long", "location.lat"), crs = 4326)


ggplot(data = bridges) +
  geom_sf() +
  theme_classic() +
  theme(
    axis.title = element_blank(),  # Remove axis titles
    axis.text = element_blank(),    # Remove axis text
    axis.ticks = element_blank(),   # Remove axis ticks
    panel.grid = element_blank()     # Remove grid lines
  )

ggplot() +
  geom_sf(data = roads,
          col = "red",
          alpha = 0.3) +
  geom_sf(data = bridges,
          col = "blue",
          lwd = 5) +
  theme_classic() +
  theme(
    axis.title = element_blank(),  # Remove axis titles
    axis.text = element_blank(),    # Remove axis text
    axis.ticks = element_blank(),   # Remove axis ticks
    panel.grid = element_blank()     # Remove grid lines
  )

ggplot(data = bobcats_sf) +
  geom_sf(col = "black",
          alpha = 0.1) +
  theme_classic() +
  theme(
    axis.title = element_blank(),  # Remove axis titles
    axis.text = element_blank(),    # Remove axis text
    axis.ticks = element_blank(),   # Remove axis ticks
    panel.grid = element_blank()     # Remove grid lines
  )


