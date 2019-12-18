# Defenders of Wildlife branded color palettes for use in scientific figure development using ggplot.
# Modelled after @drismonj tutorial. Learn more at
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# All listed Defenders branded colors
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

