###############################################################
## Publication-ready themes for ggplot2
###############################################################
library(ggplot2)

# Define variables for standard linewidths: 0.18 mm, 0.25 mm, 0.35 mm, 0.5 mm, 0.70 mm, 1 mm
lw18 <- 0.18/0.75
lw25 <- 0.25/0.75
lw35 <- 0.35/0.75
lw50 <- 0.50/0.75
lw70 <- 0.70/0.75
lw100 <- 1.00/0.75

# Set default line width to 0.18mm for the geom objects and text size to 9 pt
update_geom_defaults("line", list(linewidth = lw18))
update_geom_defaults("path", list(linewidth = lw18))
update_geom_defaults("point", list(stroke = lw18, size = lw50))
update_geom_defaults("bar", list(linewidth = lw18))
update_geom_defaults("pointrange", list(linewidth = lw18, stroke = lw18, size = lw18))
update_geom_defaults("linerange", list(linewidth = lw18))
update_geom_defaults("sf", list(linewidth = lw18))
update_geom_defaults("segment", list(linewidth = lw18))
update_geom_defaults("abline", list(linewidth = lw18))
update_geom_defaults("hline", list(linewidth = lw18))
update_geom_defaults("vline", list(linewidth = lw18))
update_geom_defaults("text", list(size = 9/.pt))


# theme with a box border for the plot region
theme_boxborder <- function(base_size = 9, 
                            base_family = "",
                            base_line_size = lw18, 
                            base_rect_size = lw18) {
  theme_bw(base_size = base_size,
           base_family = base_family,
           base_line_size = base_line_size,
           base_rect_size = base_rect_size) %+replace%
    theme(
      axis.text = element_text(size = rel(0.9), colour = "black"),
      axis.ticks = element_line(colour = "black", linewidth = rel(1)),
      legend.position = c(0.99, 0.99),
      legend.justification = c("right", "top"),
      legend.background = element_blank(),
      legend.key = element_blank(),
      legend.key.width = unit(1.2, "lines"),
      legend.key.height = unit(0.8, "lines"),
      # legend.text = element_text(size = rel(0.9)), # legend text size
      legend.title = element_text(size = rel(0.9)),
      legend.margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines"),
      legend.box.background = element_blank(),
      panel.grid = element_blank(),
      panel.border = element_rect(fill = NA, colour = "black", linewidth = rel(1)),
      panel.background = element_blank(),
      strip.background = element_rect(fill = NA, colour = NA),
      strip.text = element_text(colour = "black", size = rel(1),
                                margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines")),
      plot.background = element_blank(),
      plot.title = element_text(hjust = 0.5, margin = margin(b = base_size/4), face = "bold"),
      plot.margin = margin(t = base_size/3*2, r = base_size, b = base_size/4, l = base_size/4, unit = "pt"),
      complete = TRUE
    )
}

    
    
# theme with a L border for the plot region
theme_lborder <- function(base_size = 9, 
                          base_family = "",
                          base_line_size = lw18, 
                          base_rect_size = lw18) {
  theme_classic(base_size = base_size,
                base_family = base_family,
                base_line_size = base_line_size,
                base_rect_size = base_rect_size) %+replace%
    theme(
      axis.text = element_text(size = rel(0.9), colour = "black"),
      axis.ticks = element_line(colour = "black", linewidth = rel(1)),
      axis.line = element_line(colour = "black", linewidth = rel(1)),
      legend.position = c(0.99, 0.99),
      legend.justification = c("right", "top"),
      legend.background = element_blank(),
      legend.key = element_blank(),
      legend.key.width = unit(1.2, "lines"),
      legend.key.height = unit(0.8, "lines"),
      #legend.text = element_text(size = rel(0.9)), # legend text size
      legend.title = element_text(size = rel(0.9)),
      legend.margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines"),
      legend.box.background = element_blank(),
      panel.background = element_blank(),
      strip.background = element_rect(fill = NA, colour = NA),
      strip.text = element_text(colour = "black", size = rel(1),
                                margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines")),
      plot.background = element_blank(),
      plot.title = element_text(hjust = 0.5, margin = margin(b = base_size/4), face = "bold"),
      plot.margin = margin(t = base_size/3*2, r = base_size, b = base_size/4, l = base_size/4, unit = "pt"),
      complete = TRUE
    )
}
