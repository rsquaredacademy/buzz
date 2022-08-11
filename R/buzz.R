#' @export
toast <- function(title = "Hey", message = NULL,
                 theme = NULL, position = "center",
                 progress_bar_color = NULL,
                 session = getDefaultReactiveDomain()) {

  notice = list(
    theme = theme,
    title = title,
    message = message,
    position = position,
    progressBarColor = progress_bar_color
  )

  session$sendCustomMessage(
    type = 'toast.send',
    message = notice
  )
}
