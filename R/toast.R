#' @import shiny htmltools
#' @export
toast <- function(title = "Hey", message = NULL, type = "show", theme = NULL, position = "center", 
                 duration = 5000, progress_bar_color = NULL, background_color = NULL, 
                 max_width = NULL, buttons = NULL, inputs = NULL,
                 title_color = NULL, title_size = NULL, title_line_height = NULL,
                 message_color = NULL, message_size = NULL, message_line_height = NULL,
                 image = NULL, image_width = NULL, zindex = 99999, layout = 1,
                 balloon = FALSE, close = TRUE, close_on_escape = FALSE, close_on_click = FALSE,
                 rtl = FALSE, display_mode = 0, drag_to_close = TRUE, pause_on_hover = TRUE,
                 reset_on_hover = FALSE, progress_bar_easing = "linear", overlay = FALSE,
                 overlay_close = FALSE, overlay_color = 'rgba(0, 0, 0, 0.6)',
                 animate_inside = TRUE, transition_in = 'fadeInUp', transition_out = 'fadeOut',
                 session = getDefaultReactiveDomain()) {

  notice = list(
    type = type,
    theme = theme,
    title = title,
    titleColor = title_color,
    titleSize = title_size,
    titleLineHeight = title_line_height,
    message = message,
    messageColor = message_color,
    messageSize = message_size,
    messageLineHeight = message_line_height,
    position = position,
    progressBarColor = progress_bar_color,
    progressBarEasing = progress_bar_easing,
    backgroundColor = background_color,
    maxWidth = max_width,
    image = image,
    imageWidth = image_width,
    zindex = zindex,
    layout = layout,
    balloon = balloon,
    close = close,
    closeOnEscape = close_on_escape,
    closeOnClick = close_on_click,
    rtl = rtl,
    displayMode = display_mode,
    timeout = duration,
    drag = drag_to_close,
    pauseOnHover = pause_on_hover,
    resetOnHover = reset_on_hover,
    overlay = overlay,
    overlayClose = overlay_close,
    overlayColor = overlay_color,
    animateInside = animate_inside,
    transitionIn = transition_in,
    transitionOut = transition_out
  ) 

  session$sendCustomMessage(
    type = 'toast.send',
    message = notice
  )
}
