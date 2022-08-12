#' @export 
tingle <- function(content = "Hello", session = getDefaultReactiveDomain()) {

  notice = list(
    content = content
  )

  session$sendCustomMessage(
    type = "tingle.send",
    message = notice
  )
}