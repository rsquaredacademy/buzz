#' @export 
bootBox <- function(title = "Your title", message = "Your message here...", size = "small",
                    session = getDefaultReactiveDomain()) {

  notice = list(
    title = title,
    message = message,
    size = size
  )

  session$sendCustomMessage(
    type = "bootbox.send",
    message = notice
  )

}