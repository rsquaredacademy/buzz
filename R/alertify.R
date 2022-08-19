#' Alertify Alerts
#' 
#' Pretty browser dialogs.
#' 
#' @param title Dialog title.
#' @param message Dialog contents.
#' @param type Dialog type. Defaults to `"success"`. Valid values are: 
#' \itemize{
#' \item `"success"`
#' \item `"error"`
#' \item `"warning"`
#' \item `"message"`
#' }
#' @param btn_label The `OK` button label.
#' @param transition Transition effect to be used when showing/hiding the dialog. Defaults to `"pulse"`. Valid values are: 
#' \itemize{
#' \item `"pulse"`
#' \item `"slide"`
#' \item `"zoom"`
#' \item `"fade"`
#' \item `"flipx"`
#' \item `"flipy"`
#' }
#' @param transition_off Logical; if `TRUE`, transition effect is disabled. Defaults to `FALSE`.
#' @param closable Logical; if `TRUE` (the default), a `Close` button is displayed in the header of the dialog.
#' @param auto_reset Logical; if `TRUE` (the default), the dialog will reset size/position on window resize.
#' @param frameless Logical; if `TRUE`, hides both header and footer of the dialog. Defaults to `FALSE`.
#' @param maximizable Logical; if `TRUE` (the default), the `Maximize` button is displayed in the header of the dialog.
#' @param modal Logical; if `TRUE` (the default), a screen dimmer will be used and access to the page contents will be prevented.
#' @param movable Logical; if `TRUE` (the default), the dialog is movable.
#' @param move_bounded Logical; if `TRUE`, the dialog is not allowed to go off-screen. Defaults to `FALSE`.
#' @param overflow Logical; if `TRUE` (the default), the content overflow is managed by the dialog
#' @param padding Logical; if `TRUE` (the default), the content padding is managed by the dialog.
#' @param pinnable Logical; if `TRUE` (the default), the `Pin`` button is displayed in the header of the dialog.
#' @param resizeable Logical; if `TRUE`, the dialog is resizable. Defaults to `FALSE`. 
#' @param start_maximized Logical; if `TRUE`, the dialog will start in a maximized state. Defaults to `FALSE`.
#' 
#' @export 
#' 
alertify_alert <- function(title = "Alert Title", message = "Alert Message", type = "success",
                           btn_label = "OK", transition = "pulse", transition_off = FALSE, 
                           closable = TRUE, auto_reset = FALSE, frameless = FALSE,
                           maximizable = FALSE, modal = FALSE, movable = FALSE, move_bounded = TRUE,
                           overflow = FALSE, padding = TRUE, pinnable = FALSE, resizeable = FALSE,
                           start_maximized = FALSE,
                           session = getDefaultReactiveDomain()) {

  notice = list(
    title          = title,
    message        = message,
    type           = type,
    label          = btn_label,
    autoReset      = auto_reset,
    closable       = closable,
    frameless      = frameless,
    maximizable    = maximizable,
    movable        = movable,
    modal          = modal,
    moveBounded    = move_bounded,
    overflow       = overflow,
    padding        = padding,
    pinnable       = pinnable,
    resizeable     = resizeable,
    startMaximized = start_maximized,
    transition     = transition,
    transitionOff  = transition_off
  )

  session$sendCustomMessage(
    type    = "alertify.alert",
    message = notice
  )
}

#' Alertify Notifications
#' 
#' Pretty browser notifications.
#' 
#' @param message Notification message contents.
#' @param type Type of notification message. Defaults to `"success"`. Valid values are:  
#' \itemize{
#' \item `"notify"`
#' \item `"mesage"`
#' \item `"success"`
#' \item `"warning"`
#' \item `"error"`
#' }
#' @param delay The time (in seconds) to wait before the notification is auto-dismissed. `0` will keep notification open till clicked.
#' @param position Position of the notification. Defaults to `"bottom-right"`. Valid values are:  
#' \itemize{
#' \item `"bottom-right"`
#' \item `"bottom-left"`
#' \item `"bottom-center"`
#' \item `"top-right"`
#' \item `"top-left"`
#' \item `"top-center"`
#' }
#' 
#' @export 
#' 
alertify_notify <- function(message = "Alert Message", type = "success", delay = 5,
                            position = "bottom-right", 
                            session = getDefaultReactiveDomain()) {

  notice = list(
    message  = message,
    type     = type,
    delay    = delay,
    position = position
  )

  session$sendCustomMessage(
    type    = "alertify.notify",
    message = notice
  )
}