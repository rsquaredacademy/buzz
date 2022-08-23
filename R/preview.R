#' Preview Alerts
#'
#' Preview different types of alerts/notifications.
#'
#' @param type Type of alert/notification. Valid values are:
#' \itemize{
#' \item alertify
#' \item bootbox
#' \item notice
#' \item notify
#' \item tingle
#' \item toast
#' }
#'
#' @return None
#' @export
#'
previewBuzz <- function(type = "toast") {

  dep <- switch(type,
                "alertify" = useAlertify(),
                "bootbox"  = useBootBox(),
                "notice"   = useNS(),
                "notify"   = useNotify(),
                "tingle"   = useTingle(),
                "toast"    = useToast())

  if (interactive()) {

    ui <- fluidPage(
      dep
    )

    server <- function(input, output, session) {

      if (type == "alertify") {
        alertify_alert("Hey there!", "Thank you for exploring buzz!")
      } else if (type == "bootbox") {
        bootBox("Hey there!", "Thank you for exploring buzz!")
      } else if (type == "notice") {
        notice("Thank you for exploring buzz!")
      } else if (type == "notify") {
        notify("Hey there!", "Thank you for exploring buzz!")
      } else if (type == "tingle") {
        tingle("Thank you for exploring buzz!")
      } else if (type == "toast") {
        toast("Hey there!", "Thank you for exploring buzz.")
      }

    }

    shinyApp(ui, server)
  }
}
