library(shiny)

pred <- function(inp){
  data("cars")
  reg <- lm(dist ~ speed + I(speed^2) -1, data=cars)
  
  dist <- predict(reg, data.frame(speed=inp))
  return(dist[[1]])
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$mph})
    output$prediction <- renderPrint({pred(input$mph)})
  }
)



