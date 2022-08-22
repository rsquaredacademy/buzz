#' PNotify
#' 
#' Beautiful notifications and prompts.
#' 
#' @param title Title of the notice. It can be a string, an element or `FALSE` (the default) for no title. 
#' @param text Text of the notice. It can be a string, an element or `FALSE` (the default) for no text. 
#' @param type Type of notice. Defaults to `"notice"`. Other valid values are:
#' \itemize{
#' \item `"info"`
#' \item `"success"`
#' \item `"error"`
#' }
#' @param icon Logical; if `TRUE` (the default), default icon is displayed. No icon is displayed if set to `FALSE`. 
#' @param delay Delay in milliseconds before the notice is removed. If set to `"infinity"`, the notice will not close.
#' @param hide Logical; if `TRUE` (the default), notice is closed after `delay` specified in milliseconds. 
#' @param sticker Logical; if `TRUE` (the default), provides a button for the user to manually stick the notice.
#' @param closer Logical; if `TRUE` (the default), provides a button for the user to manually close the notice.
#' @param shadow Logical; if `TRUE` (the default), displays a drop shadow.
#' @param mouse_reset Logical; if `TRUE` (the default), resets the hide timer if the mouse moves over the notice.
#' @param animation The animation to be used while displaying and hiding the notice. `"none"` and `"fade"` (the default) #' are supported out of the box.  
#' @param animate_speed Speed at which the notice animates in and out. Valid values are:
#' \itemize{
#' \item `"slow"`: 400ms
#' \item `"normal"`: 250ms
#' \item `"fast"`: 100ms
#' }
#' @param width Width of the notice. Default is `"360px"`.
#' @param min_height Minimum height of the notice. Default is `"16px"`. It will expand to fit the content.
#' @param max_text_height Maximum height of the text container. Default is `"200px"`. If the text goes beyond this     #' height, scrollbars will appear. Use `NULL` to remove this restriction.
#' @param translucent Logical; if `TRUE`, creates see through notice. Defaults to `FALSE`.
#' @param non_blocking Logical; if `TRUE`, notice fades to show elements underneath. Defaults to `FALSE`.
#' 
#' @section Functions:
#' \itemize{
#' \item \code{useNotify}: Dependencies to include in your UI.
#' \item \code{notify}: Display notifications.
#' }
#' 
#' @name notify
#' 
#' @export
#' 
notify <- function(title = "Hey", text = NULL, type = "notice", icon = TRUE, delay = 8000,
                   hide = TRUE, sticker = TRUE, closer = TRUE, shadow = TRUE, mouse_reset = TRUE,
                   animation = 'fade', animate_speed = 'normal', width = "360px", min_height = "16px", 
                   max_text_height = "200px", translucent = FALSE, non_blocking = FALSE,
                   session = getDefaultReactiveDomain()) {

  notice = list(
    title         = title,
    text          = text,
    type          = type,
    icon          = icon, 
    delay         = delay,
    hide          = hide,
    sticker       = sticker,
    closer        = closer,
    shadow        = shadow,
    mouseReset    = mouse_reset,
    animation     = animation,
    animateSpeed  = animate_speed,
    width         = width, 
    minHeight     = min_height,
    maxTextHeight = max_text_height
  )

  if (translucent) {
    notice$addClass = "translucent"
  }

  if (non_blocking) {
    notice$addModelessClass = "nonblock"
  }

  session$sendCustomMessage(
    type    = "notify.send",
    message = notice
  )
}
