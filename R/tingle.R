#' Tingle
#' 
#' Minimalist and easy to use modals.
#' 
#' @param content Content of the modal.
#' @param close_button Logical; if `TRUE`, displays a button to close the modal. Defaults to `FALSE`.
#' @param button_label Label of `close_button`. 
#' @param button_type Type of button. Defaults to `"default"`. Other valid values are: 
#' \itemize{
#' \item `"primary"`
#' \item `"danger"`
#' }
#' @param button_position Position of the button inside the modal. Defaults to `"right"`. Valid values are: 
#' \itemize{
#' \item `"right"`
#' \item `"left"`
#' }
#' @param session Shiny session object.
#' 
#' @section Functions:
#' \itemize{
#' \item \code{useTingle}: Dependencies to include in your UI.
#' \item \code{tingle}: Display modals.
#' }
#' 
#' @examples  
#' if (interactive()) {
#' library(shiny)
#' library(buzz)
#' 
#' ui <- fluidPage(
#' 
#'   useTingle(), # include dependencies
#'   actionButton(inputId = "btn",
#'                label   = "Tingle Demo")
#' 
#' )
#' 
#' server <- function(input, output, session) {
#' 
#'   observeEvent(input$btn, {
#'     # display modal
#'     tingle("Hey there!", "Thank you for exploring buzz!")
#'   })
#' }
#' 
#' shinyApp(ui, server)
#' }
#' 
#' @name tingle
#' 
#' @export 
#' 
tingle <- function(content = "Hello", close_button = FALSE, button_label = "Close", 
                   button_type = "default", button_position = "right", 
                   session = getDefaultReactiveDomain()) {

  notice = list(
    content = content
  )

  if (close_button) {
    notice$footer      = TRUE
    notice$btnLabel    = button_label
    notice$btnType     = button_type  
    notice$btnPosition = button_position
  }

  session$sendCustomMessage(
    type    = "tingle.send",
    message = notice
  )
}