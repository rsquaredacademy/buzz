#' @export 
alertify_alert <- function(title = "Alert Title", message = "Alert Message", type = "success",
                           btn_label = "OK", transition = "pulse", transition_off = FALSE, 
                           closable = TRUE, auto_reset = FALSE, frameless = FALSE,
                           maximizable = FALSE, modal = FALSE, movable = FALSE, move_bounded = TRUE,
                           overflow = FALSE, padding = TRUE, pinnable = FALSE, resizeable = FALSE,
                           start_maximized = FALSE,
                           session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    message = message,
    type = type,
    label = btn_label,
    autoReset = auto_reset,
    closable = closable,
    frameless = frameless,
    maximizable = maximizable,
    movable = movable,
    modal = modal,
    moveBounded = move_bounded,
    overflow = overflow,
    padding = padding,
    pinnable = pinnable,
    resizeable = resizeable,
    startMaximized = start_maximized,
    transition = transition,
    transitionOff = transition_off
  )

  session$sendCustomMessage(
    type = "alertify.alert",
    message = notice
  )
}

#' @export 
alertify_notify <- function(message = "Alert Message", type = "success", delay = 5,
                            position = "bottom-right", 
                            session = getDefaultReactiveDomain()) {

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