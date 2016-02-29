library(plotly)
library(dplyr)

# Creates scatter plot based on user choice 
build_plot <- function(data, userChoice, userColor) {
  userChoice <- toString(userChoice)
  species_data <- data %>% 
            filter(Species == userChoice)

  plot_title <- paste("Sepal Length vs. Petal Length:", userChoice)
  
  p <- plot_ly(
    data = species_data, x = Sepal.Length, y = Petal.Length, mode = "markers", marker = list(color = userColor)) %>%
    layout(title = plot_title)
  return(p)
}

