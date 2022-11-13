library(tidyverse) 
library("dplyr")
library("ggplot2")


abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

birthrate_pop <- abortion %>%
  select(year, birthratetotal, population1544) %>%
  arrange(year, birthratetotal, population1544)


# Stacked barplot with multiple groups
ggplot(birthrate_pop) +
  geom_col(mapping = aes(x = year, y = birthratetotal, fill = population1544)

ggplot(top_50) +
  geom_col(mapping = aes(x = year, y = birthratetotal, fill = population1544))  

ggplot(data = abortion) +
  geom_point(mapping = aes(x = year, y = birthratetotal)) 


# Use position=position_dodge()
ggplot(data = top_50, aes(x = birthratetotal, y = population1544)) +
  geom_bar(stat="identity", position=position_dodge())

ggplot(top_50, aes(x = population1544, y = birthratetotal)) + 
  geom_bar(stat = "identity") 

ggplot(top_50) +
  geom_col(mapping = aes(x = population1544, y = birthratetotal)) +
  coord_flip() # switch the orientation of the x- and y-axes







