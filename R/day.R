#' @title Get Day
#' @description A helper function used to pull the our information from a POSIX object.
#' @param x An object of class POSIX or a vector containing POSIX.
#' @export
day = function (x) {
  if (any(!is.POSIXct(x))) {message('Object(s) passed to get.day is not a POSIX.')}
  as.numeric(format(x, '%d'))
}


#' @title Get Julian Day
#' @description A helper function used to pull the our information from a POSIX object.
#' @param x An object of class POSIX or a vector containing POSIX.
#' @export
get.julian = function (x) {
  if (any(!is.POSIXct(x))) {message('Object(s) passed to get.day is not a POSIX.')}
  as.numeric(difftime(x, clock(0, 1, 1, 12), units = 'days')) + 4713*365.25
}
