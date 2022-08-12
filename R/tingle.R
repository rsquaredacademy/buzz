#' @export 
tingle <- function(content = "Hello", close_button = FALSE, button_label = "Close", 
                   button_type = "default", button_position = "right", 
                   session = getDefaultReactiveDomain()) {

  notice = list(
    content = content
  )

  if (close_button) {
    notice$footer = TRUE
    notice$btnLabel = button_label
    notice$btnType = button_type  
    notice$btnPosition = button_position
  }

  session$sendCustomMessage(
    type = "tingle.send",
    message = notice
  )
}