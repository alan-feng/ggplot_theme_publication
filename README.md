# ggplot-theme-paper
Custom clean ggplot themes for research publications by setting default base font size at 9pt, base line width at 0.18mm and base font family at "Helvatica".

## Installation
```r
source("https://github.com/alan-feng/ggplot-theme-paper/blob/main/theme4paper.R?raw=TRUE")
```
or 
```r
source("https://raw.githubusercontent.com/alan-feng/ggplot-theme-paper/main/theme4paper.R")
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
  base_font_size = ,
  base_family = "",
  base_rect_size = ,
  base_line_size =
  ) +
  theme(
  # add extra custom ggplot theme settings here
  
  )
```
