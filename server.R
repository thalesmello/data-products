library(shiny)

shinyServer(function(input, output) {
  output$graph <- renderPlot({
    a <- input$a
    b <- input$b
    c <- input$c
    x <- seq(-20, 20, length = 100)
    y = a * x ^ 2 + b * x + c
    
    plot(x, y, xlim = c(-20, 20), ylim = c(-100, 100), type = "l")
  })
})