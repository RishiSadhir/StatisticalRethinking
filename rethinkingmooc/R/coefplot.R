#' coefplot
#'
#' @import ggplot2
#'
#' @param map_fit
#'
#' @return
#' @export
#'
#' @examples
coefplot <- function(map_fit) {
  fit_stats <- precisdf(map_fit)

  ggplot(fit_stats, aes(x=Param, y=Mean)) +
    geom_point(size=2) +
    geom_linerange(aes(ymin=`5.5%`, ymax=`94.5%`)) +
    geom_hline(yintercept = 0, linetype=2) +
    ggtitle("Coefficient Plot") +
    xlab("Parameter") + ylab("Estimate") +
    coord_flip() +
    # imported from this package
    theme_bw() + theme_empty()

}
