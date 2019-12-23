# Defenders of Wildlife branded color palettes for use in scientific figure development using ggplot.
# Modelled after @drismonj tutorial. Learn more at
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# All standard land ownership colors
land_ownership_colors <- c(
  `BLM`="#fee679",
  `BLM Wilderness Area`="#fecb5c",
  `USFS`="#ccebc5",
  `USFS Wilderness Area`="#99d594",
  `NPS`="#cabddc",
  `NPS Wilderness Area`="#b189c1",
  `USFWS NWR`="#7fcca7",
  `USFWS Wilderness Area`="#66bf7f",
  `National Grasslands`="#e6f5b1",
  `Bureau of Reclamation`="#ffffb3",
  `Indian Reservation`="#fdb46c",
  `Indian Reservation Wilderness Area`="#fd9a52",
  `Military Reservations and Corps of Engineers`="#fbb4ce",
  `Other Federal Land`="#e4c49f",
  `State Land`="#b3e3ee",
  `State Wilderness Area`="#6bcee2",
  `State, County, City; Wildlife, Park, and Outdoor Recreation Areas`="#8fb5be",
  `Private Land`="#ffffff")

land_ownership_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (land_ownership_cols)

  land_ownership_colors[cols]
}


# National Park Service standard map colors
nps_colors <- c(
  `white`="#f2f4f0",
  `brown`="#decbbc",
  `green`="#3d9c89",
  `light green`="#9db5a8",
  `gray`="#859391",
  `blue`="#c4e6f7")

nps_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (nps_cols)

  nps_colors[cols]
}


# Colors that contribute to a set of color blind friendly palettes
color_blind_colors <- c(
  `red`="#b2182b",
  `peach`="#ef8ab2",
  `cream`="#fddbc7",
  `light blue`="#d1e5f0",
  `blue`="#67a9cf",
  `dark blue`="#2166ac",
  `orange red`="#d73027",
  `orange`="#fc8d59",
  `yellow`="#fee090",
  `light blue 2`="#e0f3f8",
  `blue 2`="#91bfdb",
  `dark blue 2`="#4575b4",
  `brown`="#8c510a",
  `light brown`="#d8b365",
  `tan`="#f6e8c3",
  `teal`="#c7eae5",
  `turquoise`="#5ab4ac",
  `green`="#01665e")

color_blind_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (color_blind_cols)

  color_blind_colors[cols]
}
