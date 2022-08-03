#' @export
notify <- function(title = "Hey", text = NULL,
                 session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    text = text
  )

  session$sendCustomMessage(
    type = "pnotify-send",
    message = notice
  )
}
