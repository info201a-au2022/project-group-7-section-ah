#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <-fluidPage(
  navbarPage("Post-Roe Impacts on America",
             navbarMenu("About Us",
                        tabPanel("Project Overview",
                                 titlePanel("Project Overview"),
                                 mainPanel(
                                   p("Throughout this project, our group aimed to address the effectiveness of the court case Roe v. Wade in 1973 given its overturn this year. With many states in America deciding to restrict access to abortions, it becomes important to analyze how safe abortions have benefited people because of this case."), 
                                   p("Our research questions addressed how birthrates and abortion rates have changed after the passing of Roe, how abortion rates have changed between states with differing political views, and how pregnancy rates between different age groups have been impacted since Roe."),
                                   p("The dataset we worked with included information from 1973 to 2017 concerning trends of pregnancies, abortions, birthrates, etc. We focused on the rates of these categories among states and ages in order to fully understand Roe’s impact on our current society."),
                                   p("It was found that there were declining abortion rates even before Roe’s overturn, with a peak after it was passed. Due to the recession in 2008, birth rates increased while abortion rates decreased. People in their early to mid twenties tended to have higher pregnancy rates, possibly due to other age ranges seeking contraceptive measures instead due to the correlation between age and societal expectations. Ultimately, within the data we analyzed, we concluded that more abortion restrictions may lead to higher birth and pregnancy rates, leading to lower abortion rates due to the limited access across America, especially in abortion-restricted states."),
                                   img(src = "heart_pic.png", height = 140, width = 400),
                                 )),
                        tabPanel("Summary"),
                        tabPanel("Final Report")),
             tabPanel("Birth & Abortion Rates"),
             tabPanel("Total Abortion Rate Comparisons"),
             tabPanel("Pregnancy Rates & Age")),
  
)

