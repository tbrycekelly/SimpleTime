#' @title Is POSIXct
#' @author Thomas Bryce Kelly
#' @description A helper function to determine if an object or a vector of objects is POSIX.
#' @keywords Time Helper
#' @export
is.POSIXct = function(x) {
  inherits(x, "POSIXct")
}
