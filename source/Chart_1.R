####################
##### CHART 1 ######
####################

#installing packages
install.packages("ggplot2")
install.packages("tidyverse")
library("ggplot2")
library("tidyverse")

#imported csv file
abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

#making data frame of abortion and birth rates
abortion_birth_df <- abortion %>% 
  select(year, birthratetotal, abortionratetotal) %>% 
  group_by(year)

#plotting the data frame
abortion_birth_plot <- ggplot() +
  geom_smooth(data = abortion_birth_df, mapping = aes(x = year, y = birthratetotal, colour = "Birth"), size = 1.5) +
  geom_smooth(data = abortion_birth_df, mapping = aes(x = year, y = abortionratetotal, colour = "Abortion"), size = 1.5) + 
  ggtitle("Progression of Birth Rates and Abortion Rates from 1973-2017") +
  xlab("Year") + ylab("Rate") +
  scale_colour_manual(name="Key", values=c("pink", "orange"))
print(abortion_birth_plot)
  
###########################
##### CHART ANALYSIS ######
###########################

#The chart helps us further understand and compare how birthrates and abortion rates in America have changed throughout the years 
#since Roe v. Wade was passed. Looking closely into the chart, it reveals that there has been a noticeable decrease in both birthrate
#and abortion rate since Roe v. Wade was put into place. We predict that one of the reasons for the decrease was due to the higher
#usage and greater access to contraceptives. Additionally, there is a noticeable increase in birthrates starting at the year 2000 and 
#peaking around 2005-2007. During the year 2008 is when birthrates start to decline at a steeper rate after its peak. A notable event
#happening in America during this time was the Recession. We predict that because of the Recession, less people wanted or did not 
#have the resources to be able to have kids. 


