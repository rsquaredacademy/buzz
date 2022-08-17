#' @export 
bootBox <- function(title = "Your title", message = "Your message here...", size = "small",
                    close_on_escape = TRUE, show = TRUE, backdrop = NULL, close_button = TRUE,
                    animate = TRUE, class = NULL,
                    session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    message = message,
    size = size,
    onEscape = close_on_escape,
    show = show,
    backdrop = backdrop,
    closeButton = close_button,
    animate = animate,
    className = paste0("animate__animated animate__", class)
  )

  session$sendCustomMessage(
    type = "bootbox.send",
    message = notice
  )

}