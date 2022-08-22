
<!-- README.md is generated from README.Rmd. Please edit that file -->

# buzz

<!-- badges: start -->
<!-- [![R-CMD-check](https://github.com/rsquaredacademy/buzz/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/rsquaredacademy/buzz/actions/workflows/R-CMD-check.yaml) -->
<!-- badges: end -->

Easily create alerts, notifications and tooltips in Shiny.

## Installation

You can install the development version of buzz from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rsquaredacademy/buzz")
```

## Usage

<!-- Below is a simple example of the package, visit the [website](https://buzz.rsquaredacademy.com) for more. -->

## Example

``` r
library(shiny)
library(buzz)

ui <- fluidPage(

  useBootBox(), # include dependencies
  actionButton(inputId = "notify",
               label   = "Show Notification")

)

server <- function(input, output, session) {

  observeEvent(input$pnotify, {
    bootBox(class = "rubberBand") # display the alert
  })
}

shinyApp(ui, server)
```

## Details

**buzz** offers several types of notifications/alerts and tooltip. Visit
the below websites to learn more:

-   [iziToast](https://github.com/marcelodolza/iziToast)
-   [Notification
    Styles](https://tympanus.net/Development/NotificationStyles/)
-   [PNotify](https://github.com/sciactive/pnotify)
-   [Tingle](https://github.com/robinparisi/tingle)
-   [BootBox](https://github.com/makeusabrew/bootbox)
-   [Alertify](https://github.com/MohammadYounes/AlertifyJS)
-   [MicroTip](https://github.com/ghosh/microtip)

## Getting Help

If you encounter a bug, please file a minimal reproducible example using
[reprex](https://reprex.tidyverse.org/index.html) on github. For
questions and clarifications, use
[StackOverflow](https://stackoverflow.com/).

## Code of Conduct

Please note that the buzz project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
