# 05-actionButton

library(shiny)

ui <- fluidPage(
  actionButton(inputId = "clicks",
    label = "Click me")
)

server <- function(input, output) {
  observeEvent(input$clicks, {
    # no rendering function, so output appears in console
    print(as.numeric(input$clics))
  })
}

shinyApp(ui = ui, server = server)