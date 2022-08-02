#' @export
buzz <- function(title = "Hey", message = NULL,
                 session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    message = message
  )

  session$sendCustomMessage(
    type = 'buzz.send',
    message = notice
  )
}
