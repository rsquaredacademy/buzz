#' @export 
alertify_alert <- function(title = "Alert Title", message = "Alert Message", type = "success",
                     session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    message = message,
    type = type
  )

  session$sendCustomMessage(
    type = "alertify.alert",
    message = notice
  )
}

#' @export 
alertify_notify <- function(message = "Alert Message", type = "success", delay = 5,
                            position = "bottom-right", session = getDefaultReactiveDomain()) {

  notice = list(
    message = message,
    type = type,
    delay = delay,
    position = position
  )

  session$sendCustomMessage(
    type = "alertify.notify",
    message = notice
  )
}