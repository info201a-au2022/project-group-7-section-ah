library("ggplot2")
library("tidyverse")
library("stringr")

#imported csv file
abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

#dataframe of Washington abortion rates 
abortion_wa <- abortion %>%
  select(state, year, abortionratetotal) %>%
  filter(str_detect(state, "WA"))

#dataframe of Texas abortion rates 
abortion_tx <- abortion %>%
  select(state, year, abortionratetotal) %>%
  filter(str_detect(state, "TX"))

#dataframe of WA & TX combined
abortion_states<- rbind(abortion_wa, abortion_tx)


# bar graph 
ggplot(abortion_states, aes(fill=state, y=abortionratetotal, x=year)) + 
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Comparison of total abortion rate between Washington and Texas") +
  xlab("Year") +
  ylab("Total abortion rate among women aged 15 to 44") 

  








