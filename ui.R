library(shiny)
shinyUI(
  pageWithSidebar(
  headerPanel("Fractional Excretion of Sodium (FENa)"),
  sidebarPanel(
numericInput('Serumsodium','Na mEq/L', 140, min=110, max=160
             , step=1), 
numericInput('SerumCreatinine','Cr mg/dL', 1, min=0.1, max=13
             , step=0.1),
numericInput('Urinesodium','UNa mEq/L', 140, min=10, max=400
             , step=1),
numericInput('UrineCreatinine','UCr mg/dL', 140, min=10, max=400
             , step=1),
  ),
  mainPanel(
    h3('Results of prediction'), 
    h4 ('You entered Na of'), 
    verbatimTextOutput("inputValue1"), 
    h4 ('You entered Cr of'), 
    verbatimTextOutput("inputValue2"), 
    h4 ('You entered UNa of'), 
    verbatimTextOutput("inputValue3"), 
    h4 ('You entered UCr of'), 
    verbatimTextOutput("inputValue4"), 
    
    
    h4('Which resulted in a Fena of'), 
    verbatimTextOutput("prediction")
  )
 )
)