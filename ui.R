#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
library(shinydashboard)
library(ggplot2)


# Define UI for application that draws a histogram
shinyUI(dashboardPage(
  
  # Application title
  dashboardHeader(title = "Old Faithful Geyser Data"),
  
  
  # Sidebar with a slider input for number of bins 

    dashboardSidebar(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    # Show a plot of the generated distribution
    dashboardBody(
      fluidRow( 
        box(
          width=12,
          collapsible=T,
          solidHeader = T,
          
          plotlyOutput("distPlot")))
       
    )
  )
)
