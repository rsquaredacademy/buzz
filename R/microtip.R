#' @export 
microTip <- function(id = NULL, tip = "Hey! tooltip!", position = "top", 
                     session = getDefaultReactiveDomain()) {

  notice = list(
    id = id,
    tip = tip,
    position = position
  )

  session$sendCustomMessage(
    type = 'tip.send',
    message = notice
  )
}