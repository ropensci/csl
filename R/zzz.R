csl_GET <- function(x, ...) {
  cli <- crul::HttpClient$new(x, opts = list(...))
  out <- cli$get()
  out$raise_for_status()
  out$parse("UTF-8")
}

pluck <- function(x, name, type) {
  if (missing(type)) {
    lapply(x, "[[", name)
  } else {
    vapply(x, "[[", name, FUN.VALUE = type)
  }
}

assert <- function(x, y) {
  if (!is.null(x)) {
    if (!inherits(x, y)) {
      stop(deparse(substitute(x)), " must be of class ",
           paste0(y, collapse = ", "), call. = FALSE)
    }
  }
}

assert_len <- function(x, y) {
  if (!is.null(x)) {
    if (length(x) != y) {
      stop(deparse(substitute(x)), " must be of length ", y,
        call. = FALSE)
    }
  }
}

`%||%` <- function(x, y) {
  if (is.null(x) || length(x) == 0 || !nzchar(x))
    y
  else
    x
}
