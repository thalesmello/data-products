library(shiny)

shinyUI(fluidPage(
  titlePanel("Second Order Polynomial Plotter"),
  
  sidebarLayout(
    sidebarPanel(
      p("y = ax² + bx + c", align = "center"),
      sliderInput("a",
                  "First coefficient (a):",
                  min = -10,
                  max = 10,
                  value = 1,
                  step = 0.25),
      sliderInput("b",
                  "Second coefficient (b):",
                  min = -20,
                  max = 20,
                  value = 1,
                  step = 0.25),
      sliderInput("c",
                  "Third coefficient (c):",
                  min = -80,
                  max = 80,
                  value = 1,
                  step = 0.25)
    ),
    
    mainPanel(
      plotOutput("graph")
    )
  )
))