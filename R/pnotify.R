#' @export
notify <- function(title = "Hey", text = NULL, type = "notice", icon = TRUE, delay = 8000,
                   hide = TRUE, sticker = TRUE, closer = TRUE, shadow = TRUE, mouse_reset = TRUE,
                   animation = 'fade', animate_speed = 'normal', width = "360px", min_height = "16px", max_text_height = "200px", translucent = FALSE, non_blocking = FALSE,
                   styling = "brighttheme", icons = "brighttheme", mode = "no-preference",
                   session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    text = text,
    type = type,
    icon = icon, 
    delay = delay,
    hide = hide,
    sticker = sticker,
    closer = closer,
    shadow = shadow,
    mouseReset = mouse_reset,
    animation = animation,
    animateSpeed = animate_speed,
    width = width, 
    minHeight = min_height,
    maxTextHeight = max_text_height,
    styling = styling,
    icons = icons,
    mode = mode
  )

  if (translucent) {
    notice$addClass = "translucent"
  }

  if (non_blocking) {
    notice$addModelessClass = "nonblock"
  }

  session$sendCustomMessage(
    type = "notify.send",
    message = notice
  )
}
