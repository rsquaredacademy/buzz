#' @export 
microTip <- function(id = NULL, tip = "Hey! tooltip!", position = "top", size = NULL, 
                     session = getDefaultReactiveDomain()) {

  notice = list(
    id = id,
    tip = tip,
    position = position,
    size = size
  )

  session$sendCustomMessage(
    type = 'tip.send',
    message = notice
  )
}