#' @export 
alertify <- function(title = "Alert Title", message = "Alert Message", type = "success",
                     session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    message = message,
    type = type
  )

  session$sendCustomMessage(
    type = "alertify.send",
    message = notice
  )
}