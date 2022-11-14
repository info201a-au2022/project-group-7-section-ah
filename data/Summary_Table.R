##########################
##### SUMMARY TABLE ######
##########################

#Loading packages
library(tidyverse)

#imported csv file
abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

#summary table by year
summary_table <- abortion %>%
  group_by(year) %>%
  rename("Pregnancy Rate <15 y/o" = "pregnancyratelt15",
         "Pregnancy Rate 15 - 17 y/o" = "pregnancyrate1517",
         "Pregnancy Rate 18 - 19 y/o" = "pregnancyrate1819",
         "Pregnancy Rate 20 - 24 y/o" = "pregnancyrate2024",
         "Pregnancy Rate 25 - 29 y/o" = "pregnancyrate2529",
         "Pregnancy Rate 30 - 34 y/o" = "pregnancyrate3034",
         "Pregnancy Rate 35 - 39 y/o" = "pregnancyrate3539",
         "Pregnancy Rate 40+ y/o" = "pregnancyrate40plus",
         "Abortion Rate <15 y/o" = "abortionratelt15",
         "Abortion Rate 15 - 17 y/o" = "abortionrate1517",
         "Abortion Rate 18 - 19 y/o" = "abortionrate1819",
         "Abortion Rate 20 - 24 y/o" = "abortionrate2024",
         "Abortion Rate 25 - 29 y/o" = "abortionrate2529",
         "Abortion Rate 30 - 34 y/o" = "abortionrate3034",
         "Abortion Rate 35 - 39 y/o" = "abortionrate3539",
         "Abortion Rate 40+ y/o" = "abortionrate40plus",
         "Birth Rate <15 y/o" = "birthratelt15",
         "Birth Rate 15 - 17 y/o" = "birthrate1517",
         "Birth Rate 18 - 19 y/o" = "birthrate1819",
         "Birth Rate 20 - 24 y/o" = "birthrate2024",
         "Birth Rate 25 - 29 y/o" = "birthrate2529",
         "Birth Rate 30 - 34 y/o" = "birthrate3034",
         "Birth Rate 35 - 39 y/o" = "birthrate3539",
         "Birth Rate 40+ y/o" = "birthrate40plus",) %>%
  select(-pregnancyrate1519,
         -pregnancyratelt20,
         -abortionrate1519,
         -abortionratelt20,
         -birthrate1519,
         -birthratelt20,
         -abortionratiolt15,
         -abortionratio1517,
         -abortionratio1519,
         -abortionratio1819,
         -abortionratiolt20,
         -abortionratio2024,
         -abortionratio2529,
         -abortionratio3034,
         -abortionratio3539,
         -abortionratio40plus,
         -pregnancieslt15,
         -pregnancies1517,
         -pregnancies1519,
         -pregnancies1819,
         -pregnancieslt20,
         -pregnancies2024,
         -pregnancies2529,
         -pregnancies3034,
         -pregnancies3539,
         -pregnancies40plus,
         -abortionslt15,
         -abortions1517,
         -abortions1519,
         -abortions1819,
         -abortionslt20,
         -abortions2024,
         -abortions2529,
         -abortions3034,
         -abortions3539,
         -abortions40plus,
         -birthslt15,
         -births1517,
         -births1819,
         -births1519,
         -birthslt20,
         -births2024,
         -births2529,
         -births3034,
         -births3539,
         -births40plus,
         -miscarriageslt15,
         -miscarriages1517,
         -miscarriages1519,
         -miscarriages1819,
         -miscarriageslt20,
         -miscarriages2024,
         -miscarriages2529,
         -miscarriages3034,
         -miscarriages3539,
         -miscarriages40plus,
         -populationlt15,
         -population1517,
         -population1519,
         -population1819,
         -populationlt20,
         -population2024,
         -population2529,
         -population3034,
         -population3539,
         -population40plus,
         -population1544,
         -abortionstotal,
         -birthstotal,
         -pregnancyratetotal,
         -birthratetotal,
         -abortionratetotal,
         -abortionratiototal,
         -miscarriagestotal,
         -pregnanciestotal,
         -notes,
         -versiondate) %>%
  filter(year == "2017")


###################################
##### SUMMARY TABLE ANALYSIS ######
###################################

# The table of aggregated data focuses on abortion, pregnancy, and birth rates,
# which depict the most important aspects of the data set we worked with. We
# grouped the data by year to show the most recent rates between these three
# variables. As a result, we are able to see the effects of each of these rates
# between different states within America and they give us an idea of how abortion
# restrictive states compare to non-restrictive states, given the age difference
# as well. It's easier to see how these rates fluctuate and especially increase
# among people in their mid-to-late twenties. When comparing pregnancy rates
# between Texas, an abortion restricted state, and Washington, a non-restricted
# state, the numbers seem to be higher overall. This likely stems from their 
# lack of sex education and contraceptive options compared to Washington state.
# Ultimately, this table will summarize the key ideas of the effects from Roe
# v. Wade's court case decision.
