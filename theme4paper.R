theme_boxborder <- function(base_size = 9, 
                            base_family = "",
                            base_line_size = 0.18, 
                            base_rect_size = 0.18) {
  theme_bw(base_size = base_size,
           base_family = base_family,
           base_line_size = base_line_size,
           base_rect_size = base_rect_size) %+replace%
    theme(
      panel.grid = element_blank(),
      plot.title = element_text(hjust = 0.5),
      legend.background = element_blank()
      )
}


theme_lborder <- function(base_size = 9, 
                      base_family = "",
                      base_line_size = 0.18, 
                      base_rect_size = 0.18) {
  theme_classic(base_size = base_size,
                base_family = base_family,
                base_line_size = base_line_size,
                base_rect_size = base_rect_size) %+replace%
    theme(
      plot.title = element_text(hjust = 0.5),
      legend.background = element_blank()
    )
}
