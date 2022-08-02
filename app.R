library(shiny)

shiny::addResourcePath("www", "www")

ui <- fluidPage(
  tags$head(
    tags$link(href = 'www/iziToast.min.css', rel = 'stylesheet'),
    tags$script(src = 'www/iziToast.min.js')
    # tags$script(src = 'www/script.js')
  ),

  actionButton('submit', 'Show Toast'),

  tags$script(src = 'www/script.js')
)

server <- function(input, output, session) {}

shinyApp(ui, server)
