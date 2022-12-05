library("dplyr")
library("tidyverse")
library("ggplot2")
library("plotly")
library("rsconnect")
library("shiny")
library("reshape2")

# loading dataset
abortion_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

abt_rate_compare_page <- tabPanel(
  "Abortion Rate in a designated state",
  sidebarLayout( 
    sidebarPanel( 
      selectInput( 
        inputId = "state", label = "Select State:",
        choices = unique(as.character(abortion_data$state)), selected = NULL, multiple = TRUE
      ),
      sliderInput( 
        inputId = "year", label = "Select Year:",
        min = 1973, max = 2017, value = c(1973, 2017)
      )), 
    mainPanel( 
      plotlyOutput("chart_1") 
    )
  )
)


ui <- navbarPage(
  "Climate Change",
  theme = shinythemes::shinytheme("cosmo"),
  abt_rate_compare_page
)

