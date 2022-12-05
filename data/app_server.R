library("dplyr")
library("tidyverse")
library("ggplot2")
library("plotly")
library("rsconnect")
library("shiny")
library("reshape2")

# loading dataset
abortion_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

server <- function(input, output) { 
  
  plot <- function(state, year) {
    df <- abortion_data %>%
      filter(state %in% c(input$state)) %>%
      filter(`year` >= c(input$year[1]) & `year` <= c(input$year[2]))
    return(df)
  } 
  
  
  output$chart_1 = renderPlot({
    plot.data <- melt(df, id.vars = 'years')
    plot.data <- plot.data[input$state %in% input$year, ]
    ggplot(plot.data) +
      geom_line(mapping = aes(x = year, y = abortionratetotal, colour = variable)) + 
      labs (x = "Years", y = "Nights spent per 1000", title = "Tourism") + 
      scale_colour_discrete(name = "State")
  }) 
  
  
}
