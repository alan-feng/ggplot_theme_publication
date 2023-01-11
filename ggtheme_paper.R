# Set default line width to 0.18mm for the geom objects and text size to 9 pt
update_geom_defaults("line", list(size = 0.18/0.75))
update_geom_defaults("point", list(stroke = 0.18/0.75))
update_geom_defaults("bar", list(size = 0.18/0.75))
update_geom_defaults("pointrange", list(size = 0.18/0.75, stroke = 0.18/0.75))
update_geom_defaults("linerange", list(size = 0.18/0.75))
update_geom_defaults("sf", list(size = 0.18/0.75))
update_geom_defaults("segment", list(size = 0.18/0.75))
update_geom_defaults("abline", list(size = 0.18/0.75))
update_geom_defaults("hline", list(size = 0.18/0.75))
update_geom_defaults("vline", list(size = 0.18/0.75))
update_geom_defaults("text", list(size = 9/.pt))


# theme with a box border for the plot region
theme_boxborder <- function(base_size = 9, 
                            base_family = "",
                            base_line_size = 0.18/0.75,  # line width = 0.18 mm
                            base_rect_size = 0.18/0.75) {
  theme_bw(base_size = base_size,
           base_family = base_family,
           base_line_size = base_line_size,
           base_rect_size = base_rect_size) %+replace%
    theme(
      panel.background = element_blank(),
      axis.text = element_text(size = rel(0.8), colour = "black"),
      axis.ticks = element_line(colour = "black", size = rel(1)),
      legend.position = c(1.00, 1.00),
      legend.justification = c("right", "top"),
      legend.background = element_blank(),
      legend.key.width = unit(0.8, "lines"),
      legend.key.height = unit(0.5, "lines"),
      legend.text = element_text(size = rel(0.9)), # legend text size
      legend.title = element_text(hjust = 0.2, vjust = 0.8, size = rel(0.8)),
      legend.margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines"),
      panel.grid = element_blank(),
      panel.border = element_rect(fill = NA, colour = "black", size = rel(1)),
      strip.background = element_rect(fill = NA, colour = NA),
      strip.text = element_text(colour = "black", size = rel(1),
                                margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines")),
      plot.title = element_text(hjust = 0.5, margin = margin(b = base_size/4), face = "bold"),
      plot.margin = margin(t = base_size/3*2, r = base_size, b = base_size/4, l = base_size/4, unit = "pt")
    )
}

    
    
# theme with a L border for the plot region
theme_lborder <- function(base_size = 9, 
                          base_family = "",
                          base_line_size = 0.18/0.75,  # line width = 0.18 mm
                          base_rect_size = 0.18/0.75) {
  theme_classic(base_size = base_size,
                base_family = base_family,
                base_line_size = base_line_size,
                base_rect_size = base_rect_size) %+replace%
    theme(
      panel.background = element_blank(),
      axis.text = element_text(size = rel(0.8), colour = "black"),
      axis.ticks = element_line(colour = "black", size = rel(1)),
      axis.line = element_line(colour = "black", size = rel(1)),
      legend.position = c(1.00, 1.00),
      legend.justification = c("right", "top"),
      legend.background = element_blank(),
      legend.key.width = unit(0.8, "lines"),
      legend.key.height = unit(0.5, "lines"),
      legend.text = element_text(size = rel(0.9)), # legend text size
      legend.title = element_text(hjust = 0.2, vjust = 0.8, size = rel(0.8)),
      legend.margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines"),
      strip.background = element_rect(fill = NA, colour = NA),
      strip.text = element_text(colour = "black", size = rel(1),
                                margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines")),
      plot.title = element_text(hjust = 0.5, margin = margin(b = base_size/4), face = "bold"),
      plot.margin = margin(t = base_size/3*2, r = base_size, b = base_size/4, l = base_size/4, unit = "pt")
    )
}
