# Defenders of Wildlife branded color palettes for use in scientific figure development using ggplot.
# Modelled after @drismonj tutorial. Learn more at
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# Defining Defenders branded color palettes
defenders_palettes <- list(
  `main` = defenders_cols("brown", "red", "orange", "yellow", "ltgreen", "dkgreen", "blue", "purple"),
  `warm gradient` = defenders_cols("yellow", "red"),
  `warm` = defenders_cols("red", "orange", "yellow"),
  `cool gradient` = defenders_cols("gray", "blue"),
  `natural` = defenders_cols("dkgreen", "ltgreen", "brown", "blue"),
  `classic` = defenders_cols("orange", "blue"),
  `trio` = defenders_cols("red", "purple", "blue"),
  `traffic light` = defenders_cols("red", "yellow", "dkgreen"),
  `oranges` = defenders_cols("brown", "red", "orange", "yellow"),
  `blues` = defenders_cols("ltgreen", "dkgreen", "blue", "purple")
)

defenders_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- defenders_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
