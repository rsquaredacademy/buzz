#' @export
notify <- function(title = "Hey", text = NULL, type = "notice",
                 session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    text = text,
    type = type
  )

  session$sendCustomMessage(
    type = "notify.send",
    message = notice
  )
}
