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
                          
                          br(),
                          br(),
                          
                          img(src = "ischool.png", width = "90%")
                        ),
                        
                        
                        mainPanel(
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
                          impact on our current society. When looking at the rates we compared,
                          they defined as the number of births/pregnancies/abortions per 1,000 women."),
                          
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
                          
                          HTML('<center><img src="abortion_photo.jpg", width = "40%" ></center>'),
                        )
                      )
)


########################################
##### abt_birth_page variable #####
########################################
abt_birth_page <- tabPanel("Abortion & Births",
                           fluidPage(h1(strong("How have birthrates and abortion rates changed after the passing of Roe?")),
                                     p("The data visualization below demonstrates the birth and abortion rates between states
                                       starting from when Roe v. Wade passed until 2017. With these two given visualizations, 
                                       it can help us compare how both birth and abortion rate have changed over the years, 
                                       along with how they differ between the states. With controversy revolving around the 
                                       passing of Roe and other factors in recent years it has caused both abortion and birth 
                                       rates to decline in this past decade. For example, the total abortion rates in Texas in
                                       1988 were 24.2 but decreased to 9.5 in 2017. One of the leading causes for this decrease
                                       is Texas’s increased abortion restrictions, making it more difficult for people to access 
                                       safe ones. Additionally, in 1988, the birth rates in Texas were 75.2 but decreased to 64.7.
                                       This could be for multiple reasons, but the main one could be more people having access to
                                       and using contraceptives. To add to this point, Texas’s increase in abortion restrictions
                                       could have influenced more people to rely on and use contraceptives, therefore causing birth 
                                       rates and abortion rates to both go down. By understanding the impacts of post-Roe through 
                                       our data, we can use this information to justify further why access to safe abortion is 
                                       essential and know the implications that restrictions have caused so far. Additionally,
                                       by looking at the data and the current state of our country, we can understand how abortion
                                       and birth rates correlate."),
                                     selectInput(inputId = "birth",
                                                 label = "Select a state for birthrate graph:",
                                                 list("AL",
                                                      "AK",
                                                      "AZ",
                                                      "AR",
                                                      "CA",
                                                      "CO",
                                                      "CT",
                                                      "DE",
                                                      "FL",
                                                      "GA",
                                                      "HI",
                                                      "ID",
                                                      "IL",
                                                      "IN",
                                                      "IA",
                                                      "KS", 
                                                      "KY",
                                                      "LA",
                                                      "ME",
                                                      "MD",
                                                      "MA",
                                                      "MI",
                                                      "MN",
                                                      "MS",
                                                      "MO",
                                                      "MT",
                                                      "NE",
                                                      "NV",
                                                      "NH",
                                                      "NJ",
                                                      "NM",
                                                      "NY",
                                                      "NC",
                                                      "ND",
                                                      "OH",
                                                      "OK",
                                                      "OR",
                                                      "PA",
                                                      "RI",
                                                      "SC",
                                                      "SD",
                                                      "TN",
                                                      "TX",
                                                      "UT",
                                                      "VT",
                                                      "VA",
                                                      "WA",
                                                      "WV",
                                                      "WI",
                                                      "WY"
                                                 )),
                                     
                                     selectInput(inputId = "abortion",
                                                 label = "Select a state for abortion rate graph:",
                                                 list("AL",
                                                      "AK",
                                                      "AZ",
                                                      "AR",
                                                      "CA",
                                                      "CO",
                                                      "CT",
                                                      "DE",
                                                      "FL",
                                                      "GA",
                                                      "HI",
                                                      "ID",
                                                      "IL",
                                                      "IN",
                                                      "IA",
                                                      "KS", 
                                                      "KY",
                                                      "LA",
                                                      "ME",
                                                      "MD",
                                                      "MA",
                                                      "MI",
                                                      "MN",
                                                      "MS",
                                                      "MO",
                                                      "MT",
                                                      "NE",
                                                      "NV",
                                                      "NH",
                                                      "NJ",
                                                      "NM",
                                                      "NY",
                                                      "NC",
                                                      "ND",
                                                      "OH",
                                                      "OK",
                                                      "OR",
                                                      "PA",
                                                      "RI",
                                                      "SC",
                                                      "SD",
                                                      "TN",
                                                      "TX",
                                                      "UT",
                                                      "VT",
                                                      "VA",
                                                      "WA",
                                                      "WV",
                                                      "WI",
                                                      "WY"
                                                 )),
                                     plotlyOutput("plot_birth"),
                                     plotlyOutput("plot_abortion")))
                           


##########################################
##### abt_rate_compare_page variable #####
##########################################
abt_rate_compare_page <- tabPanel(
  "Abortions within a state",
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
preg_rate_age_page <- tabPanel("Pregnancy & Abortions",
                               fluidPage(
                                 hr(),
                                 h1(strong("What's the importance of the correlation between pregnancy and abortion
                      rates given different age ranges?")),
                                 p("When navigating to plot different age ranges, 
                                   there seems to be a pattern of pregnancy rates 
                                   within younger age groups of less than 15 years 
                                   old to 29 years old decreasing over time. Similarly, 
                                   abortion rates have generally fluctuated, but have 
                                   had a steady decline as of recent years. More 
                                   specifically, abortion rates seemed to reach 
                                   high numbers following the passage of Roe, but 
                                   ultimately decreased in the 2000’s. This leads 
                                   us to infer that other contraceptive methods 
                                   have been used in place of abortions given the 
                                   rise in abortion restrictions, especially after 
                                   the year 2005. These other methods would also 
                                   explain decreasing pregnancy rates in correlation 
                                   to abortion rates. Therefore, the open privilege 
                                   in early years for all ages were most helpful in 
                                   promoting safe abortions and timely pregnancies in 
                                   comparison to more current data."),
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

#################################
##### summary_page_variable #####
#################################
summary_page <- tabPanel("Summary",
                         hr(),
                         h1("Summary Takeaways"),
                         p("Throughout our analysis of abortions across the United States,
                           we came to realize multiple conclusions."),
                         p("Given Roe v. Wade's overturn in 2022 of this year, abortion rates
                           were already on the decline after around 2005. This likely explains
                           the decision to overturn this court case as we have seen
                           the appropriate data to prove this. For example, California's
                           abortion rates took a deep decline as shown here:"),
                         img(src="pic1.png", height="100%", width="100%"),
                         p("We also needed to remember how the economic recession in 2008
                           may have impacted pregnancy and birth rates given the social
                           climate at the time. Therefore, while we concluded that these
                           rates may have declined as of recent years, we still must
                           keep this in mind. However, these rates can still be useful
                           to gain a general understanding of how these rates may have impacted
                           others."),
                         p("Ultimately, abortion rates were generally higher within 
                          younger age groups due to an increas of accessibility of them 
                          after the decision of Roe v. Wade. With it's overturn, 
                          there may be missing data of abortions in the future since
                          different states will now have different abortion regulations. 
                          As a result, data 
                          past 2022 may not be as accurate and we should focus on the data
                           we have provided to prove a general idea of Roe's impact on
                           American society."))



######################################
##### final_report_page_variable #####
######################################
final_report_page <- tabPanel("Report",
                              hr(),
                              h3("Code Name"),
                              p("Roe v. Wade Insights"),
                              
                              h3("Project Title"),
                              p("Post-Roe Impacts on America"),
                              
                              h3("Authors"),
                              p("Erica Huynh (erihuynh@uw.edu)"),
                              p("Michelle Kim (mkim45@uw.edu)"),
                              p("Jasmine Vuong (jasvu@uw.edu)"),
                              
                              h3("Affiliation"),
                              p("INFO - 201: Technical Foundation of Informatics -
                                The Information School -
                                University of Washington"),
                              
                              h3("Date"),
                              p("Autumn 2022"),
                              
                              h3("Abstract"),
                              p("Given the overturn of Roe v. Wade earlier this year, 
                                our group is concerned about how millions of people across 
                                the United States are affected by abortion restrictions. 
                                Post-Roe America is imperative to discuss as it impacts 
                                the lives of everyone–creating further political 
                                polarization and risking the health and safety of 
                                all within the country. To address this, we plan to 
                                present and analyze data demonstrating what the end 
                                of this 50-year precedent means for Americans and 
                                consequently, the dangers that may arise."),
                              
                              h3("Keywords"),
                              p("• Social Justice"),
                              p("• Abortion"),
                              p("• United States"),
                              p("• Roe v. Wade"),
                              
                              h3("Introduction"),
                              p("In 1973, the Supreme Court of the United States 
                                established that the Due Process Clause in the 
                                Constitution protects people’s rights to undergo 
                                an abortion under safe medical procedures. 
                                Fifty years later, this precedent has been 
                                overturned. Now, in a post-Roe America, states 
                                have the right to decide their stance on abortions 
                                by either protecting the procedure or outright 
                                banning it. This poses as an issue since it 
                                directly restricts people’s rights to full 
                                bodily autonomy, often without exceptions for 
                                unwanted pregnancies from rape or incest."),
                              p("Although we live in Washington state where 
                              abortions are protected with expanded access, 
                              our project still aims to spread awareness on the 
                              urgency of this issue throughout the United States
                              by presenting data and factual information in one place."),
                              
                              h3("Problem Domain"),
                              p("With the issue at hand, we must analyze all the 
                              factors that involve restricted abortions in America. 
                              Often, in conservative, far-right leaning states, 
                              women and others who are able to become pregnant 
                              are direct stakeholders when discussing this situation 
                              as they are most affected by Roe’s overturn. As of 
                              last month, it has been said that, “...West Virginia 
                              passed a near total [abortion] ban that will be signed 
                              by their governor in [the] coming days,” presenting 
                              alarming decisions made in these states that will 
                              further restrict everyone’s rights. Indirect stakeholders 
                              living in Washington state and other abortion-protected 
                              states are not personally being affected by this decision, 
                              yet still face the consequences associated with the 
                              restrictions as direct stakeholders will often seek 
                              the procedure in these protected states instead."),
                              p("Given the decision to overturn Roe, the rights 
                              of American citizens across the country have been 
                              thoroughly ignored. The bodily autonomy of these 
                              people are put at risk, directly violating the value 
                              criterion that defines what people consider important 
                              in life. Values of access to safe, legal abortions 
                              should therefore not be a political debate and is 
                              instead an issue of human rights. Considering these 
                              values, many believe that, “Countries have obligations 
                              to respect, protect, and fulfill human rights, 
                              including those concerning sexual and reproductive 
                              health and autonomy.” With this in mind, restrictive 
                              abortion access is not only a breach of privacy, 
                              it’s a breach of human values."),
                              p("If data and technology were to intervene in this 
                              situation, there are multiple effects that could occur. 
                              From one perspective, the collected information could 
                              help present to lawmakers and government figures that 
                              abortion restrictions only create further harm for 
                              people and America as a whole. By compiling numerous 
                              sources together, this could potentially lead to 
                              better resources for direct stakeholders as it 
                              pressures the system into reconsidering these 
                              restrictive policies. On the other hand however, new 
                              technology that is able to track personal data presents 
                              a threat to pregnant people seeking abortions in 
                              restricted states. An article describes that, 
                              “Until this past May, anyone could buy a weekly 
                              trove of data on clients at more than 600 Planned 
                              Parenthood sites around the country for as little 
                              as $160.” The data collected includes addresses, 
                              clinic visits, and income brackets, putting these 
                              people at risk of being criminalized for violating 
                              the state regulations."),
                              p("Ultimately, all of these aspects combine together 
                              to present issues concerning abortions in America."),
                              
                              h3("Research Questions"),
                              h5("1. How birthrates and abortion rate changed after 
                              the passing of Roe v. Wade?"),
                              p("The passing of Roe v. Wade allowed for more women 
                              to have access to safe abortions. With this given, 
                              we wanted to see the impacts Roe v. Wade had for 
                              women across America. Specifically looking into 
                              birthrates and abortion rates, we can see if the 
                              legalization of safe abortions has led to less people 
                              being forced into child birth, and instead, making 
                              decisions for their own bodies. This research question 
                              is important because we can gain insight into the 
                              implementation of Roe v. Wade in hopes that it will 
                              further prove why Roe v. Wade should not be outlawed. 
                              We will approach this research question by looking 
                              at the birthrates and abortion rate after 1973 
                              (when Roe v. Wade was passed), and comparing how 
                              their rates have changed throughout the years."),
                              h5("2. How have abortion rates changed in both the 
                              most abortion supporting state and least supporting 
                              state after the passing of Roe v. Wade?"),
                              p("The topic of abortion has been a highly debated 
                              topic between conservative and liberal states, where 
                              conservative states are against and liberal states 
                              are for abortions. We wanted to compare how abortion 
                              rates changed between two states with opposing opinions 
                              on the subject and see how those opinions may impact 
                              abortion rates. This question is important because by 
                              understanding how different places in America handle 
                              and view abortions, we can understand the impact it 
                              can have on abortion rates overall. We will approach 
                              this question by comparing the total abortion rates 
                              throughout the years between two specific states 
                              (one mainly against abortions and one mainly for abortions) 
                              after the passing of Roe v. Wade."),
                              h5("3. How have pregnancy rates in different age groups 
                              been impacted after the passing of Roe v. Wade?"),
                              p("Without access to abortions, many women who are either 
                              not ready or do not want to have a child are forced into 
                              having one. A lot of the time, many women are not ready 
                              because they are too young and are not able to provide 
                              and support for a child. By looking into how the passing 
                              of Roe v. Wade and how pregnancy rates have changed 
                              throughout the years for different age groups, we can 
                              understand which group of women are most likely to be 
                              impacted and benefit by having access to safer abortions. 
                              We will approach this question by comparing the averages 
                              of pregnancy rates after the passing of Roe v. Wade 
                              between specific age groups."),
                              
                              h3("The Dataset"),
                              p("National and State trends showing pregnancy, abortion,
                              and birth rates describe the root effects the passing of
                              Roe v. Wade. Through our research questions, we communicate 
                              the impact of this reversal. From the data set, birth rates 
                              fluctuate slightly, but this new precedent may lead to 
                              higher birth rates and lower abortion rates between the 
                              different ages. As a result, the data provided may give 
                              us insight as to what the base trends of pregnancy and 
                              abortion are and how this may change over time."),
                              img(src="table.png", height="110%", width="100%"),
                              p("Maddow-Zimet et al. (2020). Pregnancies, Births and 
                              Abortions in the United States: National and State Trends 
                              by Age [Dataset]. https://osf.io/td7mk"),
                              p("Isaac Maddow-Zimet, Kathryn Kost, and Sean Finn 
                              collected the data in 2020 to bring awareness and 
                              demonstrate how reproductive lives have changed over 
                              time. The data collected was funded by grants from the 
                              William and Flora Hewlett Foundation and the David and 
                              Lucile Packard Foundation. The people most likely to 
                              benefit from the data are women and others who can become 
                              pregnant because the data can help bring awareness to 
                              subjects regarding reproductive rights and abortions. 
                              The data was validated and held secure by their board, 
                              which is made up of credible law professionals and 
                              individuals who are experienced and have been working 
                              with data for 10+ years. They make sure to verify and 
                              provide credible data through thorough research. We 
                              obtained the data from data.world and have made sure 
                              to carefully credit the source of the data."),
                              
                              h3("Expected Implications"),
                              p("Based on our research questions, the data could 
                              provide possible implications for stakeholders as 
                              it helps raise awareness about the inaccessibility 
                              of abortion rights and predict future trends of 
                              pregnancy, birth, and abortion. Abortion has always 
                              been a controversial issue and although everyone does 
                              not necessarily have to agree upon the same idea, 
                              specific statistics on the indices of pregnancy, 
                              birth, and abortion could encourage more open 
                              discussions and help people to better understand 
                              various consequences that could arise to women today 
                              and the future. Women and others who can become 
                              pregnant can use this data to get new information 
                              about how people’s reproductive lives have changed 
                              over the decades. In addition, journalists who 
                              report on abortion can use this data to predict 
                              future trends of pregnancy, birth, and abortion 
                              to support their articles. By making this data 
                              accessible, more people can realize their rights 
                              and have access to the resources they need to protect 
                              themselves."),
                              
                              h3("Limitations"),
                              p("Some limitations from the data are missing information 
                                and lack of data about racial disparities in pregnancy, 
                                birth and abortion. First of all, the data only includes 
                                statistics that cover the period from 1973 to 2017, 
                                which leaves us with no information of statistics 
                                from 2018 to 2022. Missing information can limit our 
                                progress of discovering trends of people’s reproductive 
                                lives as the data only include past statistics and not 
                                current statistics. In order to include recent data, we 
                                will try to do some additional research about current 
                                statistics. Another limitation would be that there are 
                                some missing pieces of data in the data set labeled “NA.”
                                Having missing data restricts us with less information 
                                to work with and makes our findings less accurate than 
                                what they could be. The only way we could think of 
                                addressing this limitation is keeping in mind when 
                                answering our research questions that our data might 
                                be slightly inaccurate or not represent the whole 
                                picture of what we are trying to find."),
                              
                              h3("Findings"),
                              p("Through this dataset, we were able to conclude that having access 
                              to safe abortions is fundamental. Even Though the passing of Roe v. Wade 
                              allowed more women to have access to safe abortions, we discovered that 
                              there has been a decrease in both birthrate and abortion rates. We predict 
                              that one of the reasons for the decrease was the greater access to contraceptives. 
                              In addition, it was revealed that during the year  2008, the birth rate started 
                              decreasing. This may have been due to the recession since people had fewer resources 
                              to be able to have kids at that time. Therefore, we concluded that rates may have 
                              declined due to economic recession and social climate."),
                              p("While both the abortion rate and birth rate declined in the U.S, it was 
                              revealed that pregnancy rates were higher among people in their mid to late 
                              twenties, meaning that these rates may decrease in the future because these 
                              pregnancies may not have been planned. High pregnancy rates among people in their 
                              mid to late twenties reveal that these age groups have low access to abortion 
                              because the option of abortion may not be viable in their state which may have 
                              forced them to be pregnant with a child. By looking at how pregnancy rates have 
                              changed through the years of different age groups, we were able to understand which 
                              group of women are most likely to be impacted and benefit by having access to safe 
                              abortions."),
                              p("While it seems evident that states’ restrictions on abortion have a deep impact 
                              on both the abortion rate and pregnancy rate, whenever a state passes a bill 
                              that restricts abortion gets passed, the abortion rate declines which conflicts 
                              with the previous precedent outlined by Roe v. Wade. Despite a decision of the court 
                              that gave the right to have an abortion, the abortion rate is decreasing in all states 
                              revealing the low accessibility of abortion. We discovered the direct relationship 
                              between abortion restriction laws and the abortion rate. Therefore, we learned that 
                              stricter abortion restrictions in most states facilitated the decline of the abortion 
                              rate, creating an excessive burden for women seeking an abortion."),
                              
                              h3("Discussion"),
                              p("Our findings are important to gain a deeper understanding of and further 
                                justify the importance of access to safe abortions. The passing of Roe v.
                                Wade helped millions of individuals across the United States. There are many
                                reasons why one may need to have an abortion, so taking away people’s rights
                                to bodily autonomy is going to be detrimental to the lives of many. For example, 
                                some may not be financially ready to have a child or having a child would severely
                                impact their health. No matter what the reason is, people should have the right to
                                their own bodies and, therefore, should be able to decide for themselves freely. 
                                It should not be up to the states to decide for them. As mentioned previously,
                                there is a lot of controversy around the subject of abortions, where many conservative 
                                states were already making and pushing for stricter abortion laws before the overturn
                                of Roe v. wade. With some states aiming to reduce access to abortions, it does not 
                                prevent fewer abortions from happening, just decreases the number of safe ones. 
                                To add to this point, leaving the decisions to be up to the states can put people in
                                poverty at a much more significant disadvantage. Even with the overturn of Row v. Wade,
                                people in poverty might not be able to access the resources they need for a safe abortion.
                                At the same time, people who can afford the traveling expenses can get the procedure done
                                in another state. An influence that led to the overturn of Roe v. Wade was religious
                                conservatism, where many conservatives were influenced by their own religious belief. With 
                                the new development of religious conservatism, we need to be careful about combining human 
                                rights with politics. Overall, the overturn of Roe v. Wade does more damage than many people
                                may realize. With our project and findings, we hoped to emphasize the many benefits and
                                importance of the passing of Roe v. Wade to show and prove why it should not be overturned.
                                Additionally, by researching and discussing the subject of abortions, we can bring awareness
                                to and back up our reasons with reliable data."),
                              
                              h3("Conclusion"),
                              p("To conclude our project, we want to reiterate a few 
                                key points that we hope everyone is able to consider 
                                deeply. Declining birth and abortion rates as of 
                                recent years are likely a product of conflicting 
                                beliefs in the precedent that Roe had set for fifty 
                                years. While these numbers have continuously fluctuated, 
                                it is still important to keep in mind how recent trends 
                                may be a direct result of our environment."),
                              p("Given these facts, the overall decrease of abortion rate
                              totals also correlates with decreasing pregnancy rates, 
                              which seem to be most prominent among younger age groups 
                              of below 29 years old. While rates were higher after 
                              the passing of Roe, they gradually dropped into the 
                              early 2000’s. As mentioned before, this was likely 
                              a result of more abortion restrictions, but another 
                              possibility could be due to more promotions of other 
                              contraceptive methods that were introduced around 
                              this time. Therefore, the open privilege in early 
                              years for all ages were most helpful in promoting 
                              safe abortions and timely pregnancies in comparison 
                              to more current data."),
                              p("With all of this in mind, even more abortion 
                                restrictions such as Roe’s overturn most recently 
                                may lead to higher birth and pregnancy rates and 
                                possibly missing data. Since as of 2022, different 
                                states have different regulations regarding abortions, 
                                data collection may not be as accurate as datasets 
                                such as the one we have used due to possible risks 
                                for the people seeking abortions in abortion restricted 
                                states. Consequently, analyzing past data may be most 
                                informative and helpful for future generations to 
                                understand Roe’s impact on American society despite 
                                the end of its precedent."),
                              p("Although we understand others may have differing 
                                perspectives of abortions and therefore disagree 
                                with the presentation of our project, we hope 
                                everyone is able to keep an open mind and consume 
                                real data such as our own to further evaluate 
                                their beliefs. Ultimately, safe abortions are 
                                important and affect the lives of everyone. We 
                                hope the data we collected and representative 
                                charts are able to convey the importance of Roe 
                                v. Wade to guarantee bodily autonomy for all 
                                despite the current political and social climate."),
                              
                              h3("Acknowledgements"),
                              p("Thank you to Professor Winegarden and our TA, Shinji for
                                helping us throughout the quarter!"),
                              
                              h3("References"),
                              p(em("After Roe Fell: Abortion Laws by State."), "Center 
                              for Reproductive Rights. (2022, August 25). 
                              Retrieved October 31, 2022, from 
                              https://reproductiverights.org/maps/abortion-laws-by-state/"),
                              p("Brangham, W. (2022, September 15).", em("Conservative 
                              states continue to restrict abortion following overturn 
                              of Roe v. Wade."), "PBS. Retrieved October 31, 2022, from 
                              https://www.pbs.org/newshour/show/conservative-states-continue-to-restrict-abortion-following-overturn-of-roe-v-wade"),
                              p("Cambell, J. (2019, May 6).", em("This Is How Much 
                              It Costs to Be a New Mom in Your State."), 
                              "https://www.move.org/cost-to-be-a-new-mom-by-state/"),
                              p("Housman, P. (2022, June 29).", em("Roe v Wade Overturned: 
                                What It Means, What’s Next."),
                                "https://www.american.edu/cas/news/roe-v-wade-overturned-what-it-means-whats-next.cfm"),
                              p("Kekatos, M. (2022, June 27).", em("More than 150,000 births 
                                could occur in the US every year following the reversal of 
                                Roe v. Wade, report predicts."), 
                                "https://abcnews.go.com/Health/150000-births-occur-us-year-reversal-roe-wade/story?id=85795552"),
                              p("Maddow-Zimet et al. (2020).", em("Pregnancies, Births and 
                                Abortions in the United States: National and State Trends 
                                by Age [Dataset]."),
                                "https://osf.io/td7mk"),
                              p("Ortutay, B. (2022, June 29).", em("Why some fear that big 
                                tech data could become a tool for abortion surveillance."),
                                "PBS. Retrieved October 31, 2022, from 
                                https://www.pbs.org/newshour/economy/why-some-fear-that-big-tech-data-could-become-a-tool-for-abortion-surveillance"),
                              p(em("Q&A: Access to abortion is a human right."), "Human Rights 
                                Watch. (2022, July 5). Retrieved October 31, 2022, from 
                                https://www.hrw.org/news/2022/06/24/qa-access-abortion-human-right"),
                              
                              h3("Appendix A: Questions"),
                              p("N/A")
                              
                              )



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
             summary_page,
             final_report_page
  )
)