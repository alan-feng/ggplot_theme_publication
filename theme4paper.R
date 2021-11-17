theme_boxborder <- function(base_size = 9, 
                            base_family = "",
                            base_line_size = 0.24,  # line width = 0.18 mm
                            base_rect_size = 0.24) {
  theme_bw(base_size = base_size,
           base_family = base_family,
           base_line_size = base_line_size,
           base_rect_size = base_rect_size) %+replace%
    theme(
      panel.grid = element_blank(),
      panel.border = element_rect(fill = NA, colour = "black", size = rel(1)),
      plot.title = element_text(hjust = 0.5),
      legend.background = element_blank(),
      axis.text = element_text(size = rel(0.8), colour = "black"),
      axis.ticks = element_line(colour = "black", size = rel(1)),
      legend.key.size = unit(0.5, "lines"),
      legend.text = element_text(size = rel(0.6)),
      legend.title = element_text(hjust = 0.2, vjust = 0.8, size = rel(0.6)),
      legend.margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines")
    )
}


theme_lborder <- function(base_size = 9, 
                          base_family = "",
                          base_line_size = 0.24,  # line width = 0.18 mm
                          base_rect_size = 0.24) {
  theme_classic(base_size = base_size,
                base_family = base_family,
                base_line_size = base_line_size,
                base_rect_size = base_rect_size) %+replace%
    theme(
      plot.title = element_text(hjust = 0.5),
      legend.background = element_blank(),
      axis.text = element_text(size = rel(0.8), colour = "black"),
      axis.ticks = element_line(colour = "black", size = rel(1)),
      axis.line = element_line(colour = "black", size = rel(1)),
      legend.key.size = unit(0.5, "lines"),
      legend.text = element_text(size = rel(0.6)),
      legend.title = element_text(hjust = 0.2, vjust = 0.8, size = rel(0.6)),
      legend.margin = margin(0.1, 0.1, 0.1, 0.1, unit = "lines")
    )
}
