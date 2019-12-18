# Defenders of Wildlife branded color palettes for use in scientific figure development using ggplot.
# Modelled after @drismonj tutorial. Learn more at
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# Defining Defenders branded color palettes
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
