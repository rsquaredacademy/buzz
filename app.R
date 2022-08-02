library(shiny)

shiny::addResourcePath("www", "www")

ui <- fluidPage(
  tags$head(
    tags$link(href = 'www/iziToast.min.css', rel = 'stylesheet'),
    tags$script(src = 'www/iziToast.min.js')
    # tags$script(src = 'www/script.js')
  ),

  actionButton('submit', 'Show Toast'),

  # tags$script(src = 'www/script.js')
  tags$script("
    Shiny.addCustomMessageHandler(
      type = 'send-toast', function (message) {
        iziToast.show(message);
      }
    )
  ")
)

server <- function(input, output, session) {

  observeEvent(input$submit, {

    notice = list(
      title = 'Hey',
      message = 'What would you like to add?'
    )

    session$sendCustomMessage(
      type = 'send-toast',
      message = notice
    )

  })
}

shinyApp(ui, server)
