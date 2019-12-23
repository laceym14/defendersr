# Defenders of Wildlife branded color palettes for use in scientific figure development using ggplot.
# Modelled after @drismonj tutorial. Learn more at
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# Standard land ownserhip color scales
scale_color_land <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- land_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("land_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

scale_fill_land <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- land_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("land_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}


# National Park Service standard color scales
scale_color_nps <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- nps_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("nps_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

scale_fill_nps <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- nps_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("nps_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}


# Color blind friendly color scales
scale_color_cb <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- color_blind_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("color_blind_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

scale_fill_cb <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- color_blind_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("color_blind_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
