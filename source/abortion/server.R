##########################
##### defined server #####
##########################

abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")


server <- function(input, output) {
  
  
  
  ## Erica's page
  wrangle <- reactive({
    req(input$preg)
    
    filter <- abortion %>% 
      summarize(pregnancyratelt15, 
                pregnancyrate1517, 
                pregnancyrate1819, 
                pregnancyrate2024, 
                pregnancyrate2529, 
                pregnancyrate3034, 
                pregnancyrate3539, 
                pregnancyrate40plus,
                state, 
                year) %>% 
      rename("Ages Less Than 15 Years Old" = pregnancyratelt15,
             "Ages 15 - 17 Years Old" = pregnancyrate1517,
             "Ages 18 - 19 Years Old" = pregnancyrate1819,
             "Ages 20 - 24 Years Old" = pregnancyrate2024,
             "Ages 25 - 29 Years Old" = pregnancyrate2529,
             "Ages 30 - 34 Years Old" = pregnancyrate3034,
             "Ages 35 - 39 Years Old" = pregnancyrate3539,
             "Ages Greater Than 40 Years Old" = pregnancyrate40plus) %>% 
      arrange(-year) %>% 
      na.omit
  })
  
  wrangle2 <- reactive({
    req(input$abt)
    
    filter <- abortion %>% 
      summarize(abortionratelt15, 
                abortionrate1517, 
                abortionrate1819, 
                abortionrate2024, 
                abortionrate2529, 
                abortionrate3034, 
                abortionrate3539, 
                abortionrate40plus,
                state, 
                year) %>% 
      rename("Ages Less Than 15 Years Old" = abortionratelt15,
             "Ages 15 - 17 Years Old" = abortionrate1517,
             "Ages 18 - 19 Years Old" = abortionrate1819,
             "Ages 20 - 24 Years Old" = abortionrate2024,
             "Ages 25 - 29 Years Old" = abortionrate2529,
             "Ages 30 - 34 Years Old" = abortionrate3034,
             "Ages 35 - 39 Years Old" = abortionrate3539,
             "Ages Greater Than 40 Years Old" = abortionrate40plus) %>% 
      arrange(-year) %>% 
      na.omit
  })
  
  output$plot_preg <- renderPlotly({
    g <- ggplot(wrangle(), aes(x = year, y = .data[[input$preg]], text = state)) +
      geom_point() +
      ggtitle(paste("Pregnancy Rates from People of", input$preg, "(1973 - 2017)")) +
      xlim(1972, 2018) +
      ylim(0, 300) +
      xlab("Year") +
      ylab("Pregnancy Rate")
    
    ggplotly(g)
  })
  
  output$plot_abt <- renderPlotly({
    gg <- ggplot(wrangle2(), aes(x = year, y = .data[[input$abt]], text = state)) +
      geom_point() +
      ggtitle(paste("Abortion Rates from People of", input$abt, "(1973 - 2017)")) +
      xlim(1972, 2018) +
      ylim(0, 300) +
      xlab("Year") +
      ylab("Abortion Rate")
    
    ggplotly(gg)
  })
  
  #End of Erica's page
  
}