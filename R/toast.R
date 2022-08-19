#' iziToast
#' 
#' Lightweight toast notifications
#' 
#' @param title Title of the toast.
#' @param message Message of toast.
#' @param theme Theme of toast. Choose between `"light"` or `"dark"`.
#' @param position Where toast will be shown. Defaults to `"bottomRight"`. Any of the following are valid:
#' \itemize{
#' \item bottomRight
#' \item bottomLeft
#' \item topRight
#' \item topLeft
#' \item topCenter
#' \item bottomCenter
#' \item center
#' }
#' @param duration Time in milliseconds to close the toast. Defaults to `5000`. Use `FALSE` to disable.
#' @param progress_bar_color Progress bar color. Choose between hexadecimal, RGB or keyword values.
#' @param background_color Background color of the toast. Choose between hexadecimal, RGB or keyword values.
#' @param max_width Maximum width of the toast.
#' @param title_color Title color. Choose between hexadecimal, RGB or keyword values.
#' @param title_size Title font size.
#' @param title_line_height Title line height.
#' @param message_color Message color. Choose between hexadecimal, RGB or keyword values.
#' @param message_size Message font size.
#' @param message_line_height Message line height.
#' @param image Cover image.
#' @param image_width Width of cover image. Defaults to `"50px"`.
#' @param zindex The z-index CSS attribute of the toast. Defaults to `99999`.
#' @param layout Size of the toast. Choose between `1` or `2`.
#' @param balloon Logical; if `TRUE`, applies a balloon like toast. Defaults to `FALSE`.
#' @param close Logical; if `TRUE` (the default), shows a \code{x} close button.
#' @param close_on_escape Logical; if `TRUE`, allows to close toast using ESC key. Defaults to `FALSE`.
#' @param close_on_click Logical; if `TRUE`, allows to close toast by clicking on it. Defaults to `FALSE`.
#' @param rtl Logical; if `TRUE`, applies Right to Left style. Defaults to `FALSE`.
#' @param display_mode Rules to show multiple toasts. Default is `0`. Other valid values are:
#' \itemize{
#' \item 0: Waits until the current toast is closed before displaying a new one.
#' \item 1: Replaces the current toast with the new toast toast.
#' }
#' @param drag_to_close Logical; if `TRUE` (the default), toast can be closed by dragging it.
#' @param pause_on_hover Logical; if `TRUE` (the default), pauses the toast timeout while the cursor is on it.
#' @param reset_on_hover Logical; if `TRUE`, resets the toast timeout while the cursor is on it. Defaults to    #' `FALSE`.
#' @param progress_bar_easing Animation easing of progress bar. Defaults to `"linear"`.
#' @param overlay Logical; if `TRUE`, displays the overlay layer on the page. Defaults to `FALSE`.
#' @param overlay_close Logical; if `TRUE`, allows to close the toast by clicking on the overlay. Defaults to   #' `FALSE`.
#' @param overlay_color Overlay background color. Defaults to `"rgba(0, 0, 0, 0.6)"`. Choose between hexadecimal, #' RGB or keyword values.
#' @param animate_inside Logical; if `TRUE` (the default), enables animation of elements in the toast.
#' @param transition_in Toast open animation. Defaults to `"fadeInUp"`. It can be any of the following:
#' \itemize{
#' \item bounceInLeft
#' \item bounceInRight
#' \item bounceInUp
#' \item bounceInDown
#' \item fadeIn
#' \item fadeInDown
#' \item fadeInUp
#' \item fadeInLeft
#' \item fadeInRight
#' \item flipInX
#' }
#' @param transition_out Toast close animation. Defaults to `"fadeOut"`. It can be any of the following:
#' \itemize{
#' \item fadeOut
#' \item fadeOutDown
#' \item fadeOutUp
#' \item fadeOutLeft
#' \item fadeOutRight
#' \item flipOutX
#' }
#' 
#' @export
#' 
toast <- function(title = "Hey", message = NULL, theme = NULL, position = "center", 
                 duration = 5000, progress_bar_color = NULL, background_color = NULL, 
                 max_width = NULL, title_color = NULL, title_size = NULL, title_line_height = NULL,
                 message_color = NULL, message_size = NULL, message_line_height = NULL,
                 image = NULL, image_width = NULL, zindex = 99999, layout = 1,
                 balloon = FALSE, close = TRUE, close_on_escape = FALSE, close_on_click = FALSE,
                 rtl = FALSE, display_mode = 0, drag_to_close = TRUE, pause_on_hover = TRUE,
                 reset_on_hover = FALSE, progress_bar_easing = "linear", overlay = FALSE,
                 overlay_close = FALSE, overlay_color = 'rgba(0, 0, 0, 0.6)',
                 animate_inside = TRUE, transition_in = 'fadeInUp', transition_out = 'fadeOut',
                 session = getDefaultReactiveDomain()) {

  notice = list(
    theme             = theme,
    title             = title,
    titleColor        = title_color,
    titleSize         = title_size,
    titleLineHeight   = title_line_height,
    message           = message,
    messageColor      = message_color,
    messageSize       = message_size,
    messageLineHeight = message_line_height,
    position          = position,
    progressBarColor  = progress_bar_color,
    progressBarEasing = progress_bar_easing,
    backgroundColor   = background_color,
    maxWidth          = max_width,
    image             = image,
    imageWidth        = image_width,
    zindex            = zindex,
    layout            = layout,
    balloon           = balloon,
    close             = close,
    closeOnEscape     = close_on_escape,
    closeOnClick      = close_on_click,
    rtl               = rtl,
    displayMode       = display_mode,
    timeout           = duration,
    drag              = drag_to_close,
    pauseOnHover      = pause_on_hover,
    resetOnHover      = reset_on_hover,
    overlay           = overlay,
    overlayClose      = overlay_close,
    overlayColor      = overlay_color,
    animateInside     = animate_inside,
    transitionIn      = transition_in,
    transitionOut     = transition_out
  ) 

  session$sendCustomMessage(
    type    = 'toast.send',
    message = notice
  )
}
