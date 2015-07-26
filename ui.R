library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("The Safe Gatsby"),
  sidebarPanel(
    h3('Enter speed here'),
    sliderInput('mph', 'miles per hour',value = 10, min = 0, max = 40, step = 1),
    submitButton('Predict')
  ),
  mainPanel(
    h3('How much stopping distance does my 1920s oldtimer need?'),
    h4('Your stopping distance in ft'),
    verbatimTextOutput("prediction")
  )
))






