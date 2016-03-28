#setwd("C:/Users/anlu/Dropbox (dropbox)/R/DEVELOPING DATA PRODUCT/reproducible research project/RepData_PeerAssessment2-master/RepData_PeerAssessment2-master/")

setwd("D:/Dropbox (dropbox)/R/DEVELOPING DATA PRODUCT/reproducible research project/RepData_PeerAssessment2-master/RepData_PeerAssessment2-master/")
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Body Mass Index (BMI) Calculator"),
  sidebarPanel(
    numericInput('height','Enter Your Height (in)',60,min=0,max=100,step=1),
    numericInput('weight','Enter Your Weight (lb)',120,min=0,max=500,step=1),
    submitButton('Get your BMI')
  ),
  mainPanel(
    h4("Instruction:enter your height and weight in the boxes and then you can get your Body Mass Index(BMI) by clicking the button"),
    h4('Calculation:'),
    h4('Your height'),
    verbatimTextOutput("heightInput"),
    h4('Your weight'),
    verbatimTextOutput("weightInput"),
    h4('Your height'),
    verbatimTextOutput("calculation")
  
  )
))