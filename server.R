#setwd("C:/Users/anlu/Dropbox (dropbox)/R/DEVELOPING DATA PRODUCT/reproducible research project/RepData_PeerAssessment2-master/RepData_PeerAssessment2-master/")
setwd("D:/Dropbox (dropbox)/R/DEVELOPING DATA PRODUCT/reproducible research project/RepData_PeerAssessment2-master/RepData_PeerAssessment2-master/")


library(shiny)
calculator<-function(height,weight) weight*703/height/height

shinyServer(
  function(input, output) {
    
    output$heightInput <- renderPrint({input$height})
    output$weightInput <- renderPrint({input$weight})
    output$calculation <- renderPrint({calculator(input$height,input$weight)})
    
  }
)

