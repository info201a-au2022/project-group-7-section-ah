library("dplyr")


abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

<<<<<<< HEAD

=======
>>>>>>> refs/remotes/origin/main
summary_info <- list()
summary_info$abortionratetotal_max_value <- abortion %>%
  filter(abortionratetotal == max(abortionratetotal, na.rm = T)) %>%
  select(year,state, abortionratetotal)
summary_info$abortionratetotal_min_value <- abortion %>%
  filter(abortionratetotal == min(abortionratetotal, na.rm = T)) %>%
  select(year, state, abortionratetotal)
summary_info$birthratetotal_max_value <- abortion %>%
  filter(birthratetotal == max(birthratetotal, na.rm = T)) %>%
  select(year, state, birthratetotal)
summary_info$birthratetotal_min_value <- abortion %>%
  filter(birthratetotal == min(birthratetotal, na.rm = T)) %>%
  select(year, state, birthratetotal)
summary_info$pregnancyratetotal_max_value <- abortion %>%
  filter(pregnancyratetotal == max(pregnancyratetotal, na.rm = T)) %>%
  select(year, state, pregnancyratetotal)
summary_info$pregnancyratetotal_min_value <- abortion %>%
  filter(pregnancyratetotal == min(pregnancyratetotal, na.rm = T)) %>%
  select(year, state, pregnancyratetotal)
View(summary_info)



