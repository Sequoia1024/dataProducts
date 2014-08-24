library(shiny)
shinyServer(
  function(input, output) {
    bmi = reactive({as.numeric(input$weight)/((as.numeric(input$height)/100)^2)})
    output$oid1 <- renderPrint({c(input$height,'cm')})
    output$oid2 = renderPrint({c(input$weight,'kg')})
    output$bmi = renderText({
      if (input$goButton==0) 
        return("") 
      isolate({bmi()})
      
      })
    output$btype = renderText({
      if (input$goButton==0) 
        return("")
      isolate({
        if (bmi() < 18.5) "Underweight"
        else if (bmi() >= 18.5 & bmi() <25) "Normal weight"
        else if (bmi() >= 25 & bmi() <= 30 ) "Overweight"
        else if (bmi() > 30) "Obese"
      })
       
    })
    
  }
)