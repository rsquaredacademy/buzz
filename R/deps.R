#' @export
use_toast <- function() {

  izi_toast <- htmltools::htmlDependency(
    name = "buzz-pkg",
    version = "0.1.0",
    src = "",
    script = "iziToast.min.js",
    stylesheet = "iziToast.min.css",
    package = "buzz"
  )

  izi_custom <- htmltools::htmlDependency(
    name = "buzz-custom",
    version = "0.1.0",
    src = "",
    script = "script.js",
    package = "buzz"
  )

  htmltools::tagList(izi_toast, izi_custom)
}
