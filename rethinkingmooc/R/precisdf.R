#' precisdf
#'
#' @param fit rethinking::fit return object
#'
#' @import rethinking
#' @importFrom magrittr "%>%"
#'
#' @return a data frame of the prep
#' @export
#' @examples
precisdf <- function(fit) {
  captured <- capture.output({rethinking:::precis(fit)}) %>%
    str_trim %>%
    str_split(pattern = "[ ]+")

  columns <- c("Param", first(captured))

  fit_stats <- captured %>%
    rest %>%
    reduce(rbind) %>%
    as_data_frame %>%
    setNames(columns)

  dplyr::bind_cols(dplyr::select(fit_stats, Param),
            purrr::map_dfc(dplyr::select(fit_stats, -Param), as.numeric))
}
