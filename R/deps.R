#' @rdname toast
#' @export
useToast <- function() {

  htmltools::htmlDependency(
    name = "buzz-toast",
    version = "0.1.0",
    src = "",
    script = list(list(src = "iziToast.min.js", defer = NA),
                  list(src = "script.js", defer = NA)),
    stylesheet = "iziToast.min.css",
    package = "buzz"
  )

}

#' @rdname notice
#' @export
useNS <- function() {

  htmltools::htmlDependency(
    name = "buzz-ns",
    version = "0.1.0",
    src = "",
    script = list(list(src = "modernizr.custom.js", defer = NA),
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

#' @rdname notify
#' @export
useNotify <- function() {

  htmltools::htmlDependency(
    name = "buzz-pnotify",
    version = "0.1.0",
    src = "",
    script = list(list(src = "PNotify.js", defer = NA), 
                  list(src = "notify.js", defer = NA), 
                  list(src = "script.js", defer = NA)),
    stylesheet = list("PNotify.css",
                      "BrightTheme.css"),
    package = "buzz"
  )
}

#' @rdname tingle
#' @export 
useTingle <- function() {
  htmltools::htmlDependency(
    name = "buzz-tingle",
    version = "0.1.0",
    src = "",
    script = list(list(src = "tingle.min.js", defer = NA), 
                  list(src = "script.js", defer = NA)),
    stylesheet = "tingle.min.css",
    package = "buzz"
  ) 
}

#' @rdname microTip
#' @export 
useMicroTip <- function() {
  htmltools::htmlDependency(
    name = "buzz-microtip",
    version = "0.1.0",
    src = "",
    script = list(src = "script.js", defer = NA),
    stylesheet = "microtip.min.css",
    package = "buzz"
  )
}

#' @rdname bootBox
#' @export 
useBootBox <- function() {
  htmltools::htmlDependency(
    name = "buzz-bootbox",
    version = "0.1.0",
    src = "",
    script = list(list(src = "bootbox.all.min.js", defer = NA), 
                  list(src = "script.js", defer = NA)),
    stylesheet = "animate.min.css",
    package = "buzz"
  )
}

#' @rdname alertify
#' @export 
useAlertify <- function() {
  htmltools::htmlDependency(
    name = "buzz-alertify",
    version = "0.1.0",
    src = "",
    script = list(list(src = "alertify.min.js", defer = NA), 
                  list(src = "script.js", defer = NA)),
    stylesheet = list("alertify.min.css",
                      "default.min.css",
                      "semantic.min.css",
                      "bootstrap.min.css"),
    package = "buzz"
  )
}
