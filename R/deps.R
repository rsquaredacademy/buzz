#' @export
useToast <- function() {

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
useNS <- function() {

  htmltools::htmlDependency(
    name = "buzz-ns",
    version = "0.1.0",
    src = "",
    script = list("modernizr.custom.js",
                  list(src = "classie.js", defer = NA),
                  list(src = "notificationFx.js", defer = NA),
                  list(src = "script.js", defer = NA)),
    stylesheet = list("normalize.css",
                      "ns-default.css",
                      "ns-style-growl.css",
                      "ns-style-attached.css",
                      "ns-style-bar.css"),
    package = "buzz"
  )
}

#' @export
useNotify <- function() {

  htmltools::htmlDependency(
    name = "buzz-pnotify",
    version = "0.1.0",
    src = "",
    script = list("PNotify.js", "notify.js", "script.js"),
    stylesheet = list("PNotify.css",
                      "BrightTheme.css"),
    package = "buzz"
  )
}

#' @export 
useTingle <- function() {
  htmltools::htmlDependency(
    name = "buzz-tingle",
    version = "0.1.0",
    src = "",
    script = list("tingle.min.js", "script.js"),
    stylesheet = "tingle.min.css",
    package = "buzz"
  ) 
}

#' @export 
useMicroTip <- function() {
  htmltools::htmlDependency(
    name = "buzz-microtip",
    version = "0.1.0",
    src = "",
    script = "script.js",
    stylesheet = "microtip.min.css",
    package = "buzz"
  )
}

#' @export 
useBootBox <- function() {
  htmltools::htmlDependency(
    name = "buzz-bootbox",
    version = "0.1.0",
    src = "",
    script = "bootbox.all.min.js",
    package = "buzz"
  )
}

#' @export 
useAlertify <- function() {
  htmltools::htmlDependency(
    name = "buzz-alertify",
    version = "0.1.0",
    src = "",
    script = "alertify.min.js",
    stylesheet = list("alertify.min.css",
                      "default.min.css",
                      "semantic.min.css",
                      "bootstrap.min.css"),
    package = "buzz"
  )
}
