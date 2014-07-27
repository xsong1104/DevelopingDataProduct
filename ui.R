library(shiny)
library(ggplot2)

shinyUI(
      pageWithSidebar(
            # Application title
            headerPanel("Body Mass Index Calculator"),
            sidebarPanel(
                  numericInput('bodymass', 'Enter weight(kg)', 75),
                  numericInput('bodyheight', 'Enter height (m)', 1.75),
                  submitButton('Calculate BMI'),
                  helpText("Instructions:"),
                  helpText("This application calculates Body Mass Index based on weight and height. To use the application, please follow the steps below."),
                  helpText("Step1: Input weight and height on the left panel"),
                  helpText("Step2: Click on the Calulate BMI button on the left panel"),
                  helpText("Step3: Check the BMI and conclusion shown on the right panel")
            ),
            mainPanel(
                  h3('Results of calculation'),
                  h4('You entered weight (kg)'),
                  verbatimTextOutput("inputMass"),
                  h4('You entered height (m)'),
                  verbatimTextOutput("inputHeight"),
                  h4('Your Body Mass Index Calculated'),
                  verbatimTextOutput("BMI"),
                  h4('Conclusion based on BMI'),
                  verbatimTextOutput("conclusion")
            )
      )
)

