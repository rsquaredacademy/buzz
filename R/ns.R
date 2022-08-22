#' Notification Styles
#' 
#' Simple website notifications with effects
#' 
#' @param message Notification message.
#' @param type Notification type. Default is `"notice"`. Other valid values are: 
#' \itemize{
#' \item `"success"`
#' \item `"warning"`
#' \item `"error"`
#' }
#' @param layout Notification layout. Default is `"growl"`. Other valid values are: 
#' \itemize{
#' \item `"attached"`
#' \item `"bar"`
#' }
#' @param effect Notification effect type. Valid values include:  
#' \itemize{
#' \item For `"growl" layout`
#' \itemize{
#' \item `"scale"`
#' \item `"jelly"`
#' \item `"slide"`
#' \item `"genie"` 
#' } 
#' \item For `"attached" layout`
#' \itemize{
#' \item `"flip"`  
#' \item `"bouncyflip"`
#' }
#' \item For `"bar" layout`
#' \itemize{
#' \item `"slidetop"` 
#' \item `"exploader"` 
#' }
#' }
#' @param session Shiny session object.
#' 
#' @section Functions:
#' \itemize{
#' \item \code{useNS}: Dependencies to include in your UI.
#' \item \code{notice}: Display notifications.
#' }
#' 
#' @examples  
#' if (interactive()) {
#' library(shiny)
#' library(buzz)
#' 
#' ui <- fluidPage(
#' 
#'   useNS(), # include dependencies
#'   actionButton(inputId = "btn",
#'                label   = "Notice Demo")
#' 
#' )
#' 
#' server <- function(input, output, session) {
#' 
#'   observeEvent(input$btn, {
#'     # display notification
#'     notice("Hey there! Thank you for exploring buzz!")
#'   })
#' }
#' 
#' shinyApp(ui, server)
#' }
#' 
#' @name notice
#' 
#' @export
#' 
notice <- function(message = "Hello", type = "notice", layout = "growl",
                   effect = "jelly", session = getDefaultReactiveDomain()) {

  notice = list(
    message = message,
    layout  = layout,
    effect  = effect,
    type    = type
  )

  session$sendCustomMessage(
    type    = 'ns.send',
    message = notice
  )

}
