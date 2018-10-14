#' rest
#'
#' @description Returns all but the first element of a vector or list. NA if out of bounds.
#'
#' @param seq List or vector
#'
#' @return Everything in the list or vector except the first element
#' @export
#'
#' @examples rest(c(1,2,3))
rest <- function(seq) {
  len <- length(seq)
  if (len > 1) {
    return(seq[2:len])
  }
  NA
}


#' first
#'
#' @description Returns the first element of a vector or list. NA if out of bounds.
#'
#' @param seq List or vector
#'
#' @return The first element in a list or vector
#' @export
#'
#' @examples
first <- function(seq) {
  len <- length(seq)
  if (len >= 1) {
    return(seq[[1]])
  }
  NA
}


#' nth
#'
#' @description Returns the nth element of a vector or list. NA if out of bounds.
#'
#' @param seq
#' @param n
#'
#' @return
#' @export
#'
#' @examples
nth <- function(seq, n) {
  len <- length(seq)
  if (n <= len) {
    return(seq[[n]])
  }
  NA
}
