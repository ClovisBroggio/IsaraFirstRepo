library(shiny)

shinyServer(
  
  function(input, output, session) {
    output$myname <- renderText(input$name)
    output$myage <- renderText(input$age)
  }
  
  
)