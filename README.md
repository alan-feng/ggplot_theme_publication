# ggplot theme for publication
Custom clean ggplot themes for research publications by setting default base font size at 9pt, base line width at 0.18mm and base font family at "Helvatica".

## Call in R script
```r
source("https://raw.githubusercontent.com/alan-feng/ggplot_theme_publication/main/ggtheme_publication.R")
```

## Theme functions
- `theme_boxboarder`: box boarder style based on ggplot theme `theme_bw`
- `theme_lboarder`: L boarder style based on ggplot theme `theme_classic`

## Example
```
ggplot() +
  ... +
  theme_boxboarder(
  # change default base setting here if needed
  base_size = ,
  base_family = "",
  base_rect_size = ,
  base_line_size =
  ) +
  theme(
  # add extra plot-specific theme settings here
  
  )
```
