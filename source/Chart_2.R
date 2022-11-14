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

#Descriptive Paragraph
#The purpose of this bar graph is to compare the difference in evolution of abortion rates 
#between Washington and Texas by years.This is important because through this visualization, 
#people can notice which state supports abortion and which state is more likely to ban abortion.
#Not only that, people can learn how the rate of abortion is deeply influenced by politics as 
#the opinion on abortion differ from Republicans and Democrats. Going deeper, it is revealed 
#that Washington had higher abortion rate than Texas from 1973 to 2017 which highlights that 
#more women in Washington had higher access to abortion than women in Texas.Thus, it can be 
#concluded that Washington state is highly supportive of abortion while Texas is not as 
#supportive since the overall abortion rates are lower than Washington. Through the disparity 
#of abortion rates, states’ different political stand is also revealed as people could 
#recognize most Washington residents supports pro-choice that advocates for the right to have 
#legal abortion, while Texas residents supports pro-life that advocates against the practice of 
#abortion. As people can discover the states’ differing viewpoints based on the difference of 
#abortion rates, people can also realize how a lot of groups within both states are striving 
#to overturn Roe v. Wade as the overall abortion for both states are decreasing. Through this 
#information, people can recognize that the controversy of abortion presents a threat to pregnant 
#women seeking abortions as multiple groups within each state is working to enact legislations 
#to ban abortion. 









