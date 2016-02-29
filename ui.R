library(shiny)
library(plotly)
library(BH)

shinyUI(fluidPage(
  
  # Create a title
  titlePanel('Assignment 8'),
  
  # Create sidebar layout
  sidebarLayout(
    
    # Side panel for controls
    sidebarPanel(
      
      # Widget 1
      radioButtons("specie", label = h3("Choose Species"),
                   choices = list("Setosa" = 'setosa', "Versicolor" = 'versicolor', "Virginica" = 'virginica'), 
                   selected = 'setosa'),
      # Wodget 2
      selectInput("colors", label = h3("Choose Colors"), 
                  choices = list("Blue" = 'blue', "Red" = 'red', "Green" = 'green'), 
                  selected = 'blue')
      
    ),
  
    # Main panel: display plotly scatterplot
    mainPanel(
      plotlyOutput('plot')
    )
  )
))