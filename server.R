library(shiny)
library(ggplot2)

calBMI <- function(mess,height) mess / (height*height)
mkConclusion<-function(bmi) ifelse(bmi>=18.5 & bmi<=25,output<-"Normal",
                                   ifelse(bmi<18.5,output<-"Underweight",output<-"Overweight"))
shinyServer(
      function(input, output) {
            output$inputMass<- renderPrint({input$bodymass})
            output$inputHeight<- renderPrint({input$bodyheight})
            output$BMI <- renderPrint({calBMI(input$bodymass,input$bodyheight)})
            output$conclusion<- renderPrint({mkConclusion(calBMI(input$bodymass,input$bodyheight))})
      }
)