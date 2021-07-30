Fena<-function(Serumsodium,SerumCreatinine,Urinesodium,UrineCreatinine ) 100*SerumCreatinine*Urinesodium/(Serumsodium*UrineCreatinine)

shinyServer(
  function(input, output){
    
    output$inputValue1<-renderPrint({input$Serumsodium})
    output$inputValue2<-renderPrint({input$SerumCreatinine})
    output$inputValue3<-renderPrint({input$Urinesodium})
    output$inputValue4<-renderPrint({input$UrineCreatinine})
    
    
    output$prediction<-renderPrint({round(Fena(input$Serumsodium,input$SerumCreatinine,input$Urinesodium,input$UrineCreatinine),2)})
    
  }
  
  
  
  
)