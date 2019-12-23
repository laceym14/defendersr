# Defenders of Wildlife branded color palettes for use in scientific figure development using ggplot.
# Modelled after @drismonj tutorial. Learn more at
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# Defining standard land ownership color palettes
land_palettes <- list(
  `BLM` = land_ownership_cols("BLM"),
  `BLM Wilderness Area` = land_ownership_cols("BLM Wilderness Area"),
  `USFS` = land_ownership_cols("USFS"),
  `USFS Wilderness Area` = land_ownership_cols("USFS Wilderness Area"),
  `NPS` = land_ownership_cols("NPS"),
  `NPS Wilderness Area` = land_ownership_cols("NPS Wilderness Area"),
  `USFWS NWR` = land_ownership_cols("USFWS NWR"),
  `USFWS Wilderness Area` = land_ownership_cols("USFWS Wilderness Area"),
  `National Grasslands` = land_ownership_cols("National Grasslands"),
  `Bureau of Reclamation` = land_ownership_cols("Bureau of Reclamation"),
  `Tribal Land` = land_ownership_cols("Indian Reservation"),
  `Tribal Land Wilderness Area` = land_ownership_cols("Indian Reservation Wilderness Area"),
  `Military and Corps of Engineers` = land_ownership_cols("Military Reservations and Corps of Engineers"),
  `Other Federal Land` = land_ownership_cols("Other Federal Land"),
  `State Land` = land_ownership_cols("State Land"),
  `State Wilderness Area` = land_ownership_cols("State Wilderness Area"),
  `State Wildlife, Park, Outdoor Rec` = land_ownership_cols("State, County, City; Wildlife, Park, and Outdoor Recreation Areas"),
  `Private Land` = land_ownership_cols("Private Land")
)

land_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- land_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


# Defining National Park Service standard color palettes
nps_palettes <- list(
  `full palette` = nps_cols("white", "brown", "green", "light green", "gray", "blue")
)

nps_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- nps_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


# Defining color blind friendly color palettes
color_blind_palettes <- list(
  `color blind 1` = color_blind_cols("red", "peach", "cream", "light blue", "blue", "dark blue"),
  `color blind 2` = color_blind_cols("orange red", "orange", "yellow", "light blue 2", "blue 2", "dark blue 2"),
  `color blind 3` = color_blind_cols("brown", "light brown", "tan", "teal", "turquoise", "green")
)

color_blind_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- color_blind_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
