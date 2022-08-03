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

#' @export
use_ns <- function() {

  htmltools::htmlDependency(
    name = "buzz-ns",
    version = "0.1.0",
    src = "",
    script = list("modernizr.custom.js",
                  list(src = "classie.js", defer = NA),
                  list(src = "notificationFx.js", defer = NA),
                  list(src = "ns.js", defer = NA)),
    stylesheet = list("normalize.css",
                      "ns-default.css",
                      "ns-style-growl.css"),
    package = "buzz"
  )
}