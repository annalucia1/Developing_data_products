
library(rsconnect)
library(shiny)

calculator<-function(height,weight) weight*703/height/height

shinyServer(
  function(input, output) {
    
    output$heightInput <- renderPrint({input$height})
    output$weightInput <- renderPrint({input$weight})
    output$calculation <- renderPrint({calculator(input$height,input$weight)})
    
  }

)
