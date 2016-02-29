library(shiny)
source('build_plot.R')

# Save iris data into variable
data <- iris

shinyServer(function(input, output) {
  # Create a map via your build_map function
  output$plot <- renderPlotly({ 
    build_plot(data, input$specie, input$colors)
  })
})

