#' theme_empty
#'
#' @import ggplot2
#'
#' @return ggplot theme
#' @export
#'
#' @examples
theme_empty <- function() {
  ggplot2::theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))
}
