
#' @title Retrieve Year
#' @description A helper function used to pull the our information from a POSIX object.
#' @param x An object of class POSIX or a vector containing POSIX.
#' @export
year = function (x) {
  if (any(!is.POSIXct(x))) {
    message(' Object(s) passed to get.year is not a POSIX.')
  }
  as.numeric(format(x, '%Y'))
}
