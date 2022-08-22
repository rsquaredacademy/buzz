#' MicroTip
#' 
#' Minimal CSS only tooltip.
#' 
#' @param id The id of the element to attach the tooltip.
#' @param tip Content of the tooltip.
#' @param position Where the tooltip should appear relative to the target element. Defaults to `"top"`. Other valid     #' values are: 
#' \itemize{
#' \item `"bottom"`
#' \item `"left"`
#' \item `"right"`
#' \item `"top-left"`
#' \item `"top-right"`
#' \item `"bottom-left"`
#' \item `"bottom-right"`
#' }
#' @param size Size of the tooltip. Defaults to `"fit"` as the tooltip will takeup only the size it requires to show the #' text. Other valid values are:  
#' \itemize{
#' \item `"small"`
#' \item `"medium"`
#' \item `"large"`
#' }
#' @param session Shiny session object.
#' 
#' @section Functions:
#' \itemize{
#' \item \code{useMicroTip}: Dependencies to include in your UI.
#' \item \code{microTip}: Add tooltip.
#' }
#' 
#' @name microTip
#' 
#' @export 
#' 
microTip <- function(id = NULL, tip = "Hey! tooltip!", position = "top", size = NULL, 
                     session = getDefaultReactiveDomain()) {

  notice = list(
    id       = id,
    tip      = tip,
    position = position,
    size     = size
  )

  session$sendCustomMessage(
    type    = 'tip.send',
    message = notice
  )
}