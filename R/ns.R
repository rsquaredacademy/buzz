#' @export
notice <- function(message = "Hello", type = "notice", layout = "growl",
                   effect = "jelly", session = getDefaultReactiveDomain()) {

  notice = list(
    message = message,
    layout = layout,
    effect = effect,
    type = type
  )

  session$sendCustomMessage(
    type = 'ns.send',
    message = notice
  )

}
