library("ggplot2")
library("tidyverse")

#imported csv file
abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

#dataframe of birthrates by year 
birthrate_yr <- abortion %>%
  select(year, birthratetotal) %>%
  arrange(year, birthratetotal)

#Bar chart
ggplot(data = birthrate_yr, aes(x = year, y = birthratetotal)) +
  geom_bar(stat="identity", position = position_dodge(), fill = "lightpink") +
  ggtitle("Birth rates by year") +
  xlab("Year") +
  ylab("Total Birth rates") 







