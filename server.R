#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define server logic required to draw a histogram
shinyServer(function(input, output,session) {
   
  output$distPlot <- renderPlotly({
    
    # generate bins based on input$bins from ui.R
    a    <- faithful[, 2] 
    bins <- seq(min(a), max(a), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    plotly(x=~rnorm(50), type='histogram')
    
  })
  
})
