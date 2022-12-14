
<!-- README.md is generated from README.Rmd. Please edit that file -->

# buzz

<!-- badges: start -->

[![R-CMD-check](https://github.com/rsquaredacademy/buzz/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/rsquaredacademy/buzz/actions/workflows/R-CMD-check.yaml)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
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

To use alerts or notifications from **buzz** in your Shiny application,
follow the below steps:

-   Include the dependencies in the **UI** part of the app using the
    appropriate `use*` functions (`useToast()` in the below example).
-   Include the corresponding rendering function in the **Server** part
    of the app (`toast()` in the below example).

### Example

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

The below table displays the dependency and rendering functions along
with references:

| Index | Dependency      | Render              | Reference                                                                   |
|-------|-----------------|---------------------|-----------------------------------------------------------------------------|
| 1     | `useAlertify()` | `alertify_alert()`  | [Alertify](https://github.com/MohammadYounes/AlertifyJS)                    |
| 2     | `useAlertify()` | `alertify_notify()` | [Alertify](https://github.com/MohammadYounes/AlertifyJS)                    |
| 3     | `useBootBox()`  | `bootBox()`         | [BootBox](https://github.com/makeusabrew/bootbox)                           |
| 4     | `useMicroTip()` | `microTip()`        | [MicroTip](https://github.com/ghosh/microtip)                               |
| 5     | `useNS()`       | `notice()`          | [Notification Styles](https://tympanus.net/Development/NotificationStyles/) |
| 6     | `useNotify()`   | `notify()`          | [PNotify](https://github.com/sciactive/pnotify)                             |
| 7     | `useTingle()`   | `tingle()`          | [Tingle](https://github.com/robinparisi/tingle)                             |
| 8     | `useToast()`    | `toast()`           | [iziToast](https://github.com/marcelodolza/iziToast)                        |

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
