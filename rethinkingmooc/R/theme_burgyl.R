theme_burgyl <- function(legend_location = "tr") {

  legend_placer <- function(ll) {
    placement <- c(1, 1)
    if (ll == "tl") placement <- c(0, 1)
    else if (ll == "tr") placement <- c(1, 1)
    else if (ll == "bl") placement <- c(0, 0)
    else if (ll == "br") placement <- c(1, 0)
    else placement <- element_blank()
    placement
  }

  theme_gray(base_size = 10, base_family = "Courier") %+replace%
    theme(panel.background = element_rect(fill = alpha("#fbe6c5", 1/4),
                                          colour = "transparent"),
          strip.background = element_rect(fill="#f5ba98",
                                          colour = "transparent"),
          panel.grid = element_blank(),
          legend.position = legend_placer(legend_location),
          legend.justification = legend_placer(legend_location),
          legend.background = element_rect(fill = "transparent",
                                           colour = "transparent"),
          legend.key = element_rect(fill = "transparent", colour = "transparent"),
          axis.text.x = element_text(colour = "#70284a"),
          axis.text.y = element_text(colour = "#70284a"))
}

burgyl_palette <- c("#fbe6c5", "#f5ba98", "#ee8a82", "#dc7176", "#c8586c", "#9c3f5d", "#70284a")

