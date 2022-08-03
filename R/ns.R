#' @export
notify <- function(message = "Hello", layout = "growl",
                   effect = "jelly", type = "error",
                   session = getDefaultReactiveDomain()) {

  notice = list(
    message = "Hello there!",
    layout = "growl",
    effect = "jelly",
    type = "error"
  )

  session$sendCustomMessage(
    type = 'send-notice',
    message = notice
  )

}
