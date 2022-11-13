#installed packages
library("ggplot2")
library("tidyverse")

#imported csv file
abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

birthrates_df <- abortion %>% 
  summarise(birthratelt15,
            birthrate1517,
            birthrate1819,
            birthrate2024,
            birthrate2529,
            birthrate3034,
            birthrate3539,
            birthrate40plus)

abortions_df <- abortion %>% 
  summarise(abortionratelt15,
            abortionrate1517,
            abortionrate1819,
            abortionrate2024,
            abortionrate2529,
            abortionrate3034,
            abortionrate3539,
            abortionrate40plus)

