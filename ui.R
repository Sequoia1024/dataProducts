library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("BMI (body mass index) calculation"),
  sidebarPanel(
    p(strong("Introduction")),
    p("Input your height in centimeters and weight in killograms,
      then click Calculate button, this App will tell you 
      what your BMI is, and whether you're under/over- weight"),
    p("Please click 'Calculate BMI' every time after entering new values"),
    p("======================="),
    textInput(inputId = 'height',label = 'Your Height (in cm)'),
    textInput(inputId = 'weight',label = 'Your Weight (in kg)'),
    actionButton('goButton','Calculate BMI') 
  ),
   
  mainPanel(
    h3("BMI"),
    h4("You entered height:"),
    verbatimTextOutput("oid1"),
    h4("You entered weight:"),
    verbatimTextOutput("oid2"),
    h4("Your BMI is"),
    verbatimTextOutput("bmi"),
    h4("Your are:"),
    verbatimTextOutput("btype")
    
  )
))
