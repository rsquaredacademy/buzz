#' BootBox
#' 
#' Bootstrap modals made easy.
#' 
#' @param title Adds a header to the dialog.
#' @param message Text displayed in the dialog.
#' @param size Adds the relevant Bootstrap modal size class to the dialog wrapper. Valid values are:
#' \itemize{
#' \item `"small"`
#' \item `"large"`
#' \item `"extra-large"`
#' } 
#' @param close_on_escape Logical; if `TRUE` (the default), allows the user to dismiss the dialog by hitting ESC key.
#' @param show Logical; if `TRUE` (the default), the dialog is shown immediately.
#' @param backdrop Logical; if `TRUE`, the backdrop is displayed and clicking on it dismisses the dialog. Defaults to `NULL`. Valid values are: 
#' \itemize{
#' \item `NULL`: The backdrop is displayed, but clicking on it has no effect.
#' \item `TRUE`: The backdrop is displayed, and clicking on it dismisses the dialog.
#' \item `FALSE`: The backdrop is not displayed.
#' }
#' @param close_button Logical; if `TRUE` (the default), a close button is displayed.
#' @param animate Logical; if `TRUE` (the default), animates the dialog in and out.
#' @param class Custom CSS class (using Animate.css).
#' 
#' @export 
#' 
bootBox <- function(title = "Your title", message = "Your message here...", size = "small",
                    close_on_escape = TRUE, show = TRUE, backdrop = NULL, close_button = TRUE,
                    animate = TRUE, class = NULL,
                    session = getDefaultReactiveDomain()) {

  notice = list(
    title       = title,
    message     = message,
    size        = size,
    onEscape    = close_on_escape,
    show        = show,
    backdrop    = backdrop,
    closeButton = close_button,
    animate     = animate,
    className   = paste0("animate__animated animate__", class)
  )

  session$sendCustomMessage(
    type    = "bootbox.send",
    message = notice
  )

}