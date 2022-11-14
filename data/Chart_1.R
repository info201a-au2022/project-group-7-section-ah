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
  

  



