############################################
##### P3 : POST-ROE IMPACTS ON AMERICA #####
######### INFO 201 - AH - GROUP 7 ##########
############################################

# set- up
library("shiny")
library("shinythemes")
library("tidyverse")
library("data.table")
library("ggplot2")
library("plotly")
library("bslib")

abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")


##############################
##### home_page variable #####
##############################
home_page <- tabPanel("Home", 
                      hr(),
                      sidebarLayout(
                        sidebarPanel(
                          h1("About Us"),
                          hr(),
                          
                          h5("Erica Huynh"),
                          p("she/her"),
                          p("erihuynh@uw.edu"),
                          br(),
                          
                          h5("Michelle Kim"),
                          p("she/her"),
                          p("mkim45@uw.edu"),
                          br(),
                          
                          h5("Jasmine Vuong"),
                          p("she/her"),
                          p("jasvu@uw.edu"),
                          br(),
                          
                          h4("INFO 201 Fall 2022"),
                        ),
                        
                        
                        mainPanel(
                          br(),
                          h1("Our Mission"),
                          p("Throughout this project, our group aimed to address the 
                          effectiveness of the court case Roe v. Wade in 1973 given 
                          its overturn this year. With many states in America deciding 
                          to restrict access to abortions, it becomes important to 
                          analyze how safe abortions have benefited people because 
                          of this case."),
                          
                          h4("Research Questions"),
                          p("Our research questions addressed how birthrates and abortion 
                          rates have changed after the passing of Roe, how abortion 
                          rates have changed between states with differing political
                          views, and how pregnancy rates between different age groups 
                          have been impacted since Roe."),
                          
                          h4("Analyzed Data"),
                          p("The dataset we worked with included information from 1973
                          to 2017 concerning trends of pregnancies, abortions, 
                          birthrates, etc. We focused on the rates of these categories 
                          among states and ages in order to fully understand Roe’s
                          impact on our current society."),
                          
                          h4("Key Findings"),
                          p("It was found that there were declining abortion rates even
                          before Roe’s overturn, with a peak after it was passed. 
                          Due to the recession in 2008, birth rates increased while 
                          abortion rates decreased. People in their early to mid 
                          twenties tended to have higher pregnancy rates, possibly 
                          due to other age ranges seeking contraceptive measures 
                          instead due to the correlation between age and societal 
                          expectations. Ultimately, within the data we analyzed, 
                          we concluded that more abortion restrictions may lead to 
                          higher birth and pregnancy rates, leading to lower abortion 
                          rates due to the limited access across America, especially 
                          in abortion-restricted states."),
                          
                        )
                      )
)


########################################
##### abt_birth_page variable #####
########################################
abt_birth_page <- tabPanel("Abortion & Birth Rates")


##########################################
##### abt_rate_compare_page variable #####
##########################################
abt_rate_compare_page <- tabPanel(
  "Abortion Rate in a designated state",
  h1(strong("How have abortion rates changed in each state?")),
  p("Through this widget, it is revealed that the total abortion rate is going down 
  overall. Despite a decision of the Supreme court that gave the right to have an 
  abortion, the abortion rate is decreasing in all states highlighting the low 
  accessibility of abortion. One potential reason that makes people have low access to 
  abortion is the enactment of legislation that limits the ability of abortion. 
  For example, there seems to be a sudden drop in the abortion rate in Texas in 2013 
  as the abortion rate dropped from 12 to 10. This is because, in 2013, Texas passed a 
  bill that enacted restrictions on the delivery of abortion services by requiring doctors 
  to obtain admitted privileges at a local hospital and by requiring clinics to have 
  costly hospital-grade facilities. With this data, people can assume that although the 
  passing of Roe allowed people to have access to abortion, stricter abortion restrictions 
  in most states have facilitated the downturn of abortion rate, creating an excessive 
  burden for women seeking an abortion. 

"),
  br(),
  br(),
  sidebarLayout( 
    sidebarPanel( 
      selectInput( 
        inputId = "state", label = "Select State:",
        choices = unique(as.character(abortion$state)), selected = NULL
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

#######################################
##### preg_rate_age_page variable #####
#######################################
preg_rate_age_page <- tabPanel("Pregnancy & Abortion Rates",
                               fluidPage(
                                 hr(),
                                 h1(strong("What's the importance of the correlation between pregnancy and abortion
                      rates given different age ranges?")),
                                 p("When navigating to plot different age ranges, there seems to be a pattern of 
    pregnancy rates within younger age groups of less than 15 years old to 29 
    years old decreasing over time. Similarly, abortion rates have generally 
    fluctuated, but have had a steady decline as of recent years. This leads us 
    to infer that other contraceptive methods have been used in place of abortions 
    given the rise in restrictions against it, especially after the year 2005. 
    Between these two variables, they correlate in the way they have similar 
    patterns, but patterns of abortion rates are on a smaller scale. Ultimately, 
    with the passing of Roe in 1973, pregnancy rates have reduced greatly over time 
    while abortion rates have increased, but are now decreasing. This is possibly 
    due to stricter abortion restrictions in certain states, but people have 
    generally taken advantage of this privilege in the late 1900s after Roe."),
                                 fluidRow(
                                   column(4,
                                          h3("Pregnancy Rates"),
                                          selectInput(inputId = "preg",
                                                      label = "Select an age range:",
                                                      list("Ages Less Than 15 Years Old",
                                                           "Ages 15 - 17 Years Old",
                                                           "Ages 18 - 19 Years Old",
                                                           "Ages 20 - 24 Years Old",
                                                           "Ages 25 - 29 Years Old",
                                                           "Ages 30 - 34 Years Old",
                                                           "Ages 35 - 39 Years Old",
                                                           "Ages Greater Than 40 Years Old")),
                                          br(),
                                          br(),
                                          br(),
                                          br(),
                                          br(),
                                          br(),
                                          br(),
                                          br(),
                                          br(),
                                          br(),
                                          h3("Abortion Rates"),
                                          selectInput(inputId = "abt",
                                                      label = "Select an age range:",
                                                      list("Ages Less Than 15 Years Old",
                                                           "Ages 15 - 17 Years Old",
                                                           "Ages 18 - 19 Years Old",
                                                           "Ages 20 - 24 Years Old",
                                                           "Ages 25 - 29 Years Old",
                                                           "Ages 30 - 34 Years Old",
                                                           "Ages 35 - 39 Years Old",
                                                           "Ages Greater Than 40 Years Old"))
                                          
                                   ),
                                   column(8, 
                                          plotlyOutput("plot_preg"),
                                          plotlyOutput("plot_abt"))
                                 ),
                               ))



######################################
##### final_report_page_variable #####
######################################
final_report_page <- tabPanel("Report",
                              h1("Summary"))



######################
##### defined ui #####
######################
ui <- fluidPage(
  theme = bs_theme(bootswatch = "lux"),
  
  img(src="header.jpg", height="110%", width="100%"),
  navbarPage(title = "Post-Roe Impacts on America",
             home_page,
             abt_birth_page,
             abt_rate_compare_page,
             preg_rate_age_page,
             final_report_page
  )
)