####################
##### CHART 3 ######
####################

#install.packages("ggplot2")
library("ggplot2")
library("tidyverse")


#imported csv file
abortion <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-7-section-ah/main/data/NationalAndStatePregnancy_PublicUse.csv")

#dataframe of pregnancy rates by age
preg_df <- abortion %>%
  summarise(pregnancyratelt15,
            pregnancyrate1517,
            pregnancyrate1819,
            pregnancyrate2024,
            pregnancyrate2529,
            pregnancyrate3034,
            pregnancyrate3539,
            pregnancyrate40plus)


#average pregnancy rates by age
avg_preg_lt15 <- round(mean(abortion$pregnancyratelt15, na.rm = T), digits = 2)

avg_preg_1517 <- round(mean(abortion$pregnancyrate1517, na.rm = T), digits = 2)

avg_preg_1819 <- round(mean(abortion$pregnancyrate1819, na.rm = T), digits = 2)

avg_preg_2024 <- round(mean(abortion$pregnancyrate2024, na.rm = T), digits = 2)

avg_preg_2529 <- round(mean(abortion$pregnancyrate2529, na.rm = T), digits = 2)

avg_preg_3034 <- round(mean(abortion$pregnancyrate3034, na.rm = T), digits = 2)

avg_preg_3539 <- round(mean(abortion$pregnancyrate3539, na.rm = T), digits = 2)

avg_preg_40plus <- round(mean(abortion$pregnancyrate40plus, na.rm = T), digits = 2)


#dataframe of average pregnancy rates by age
avg_preg_df <- data.frame(avg_preg_lt15, 
                          avg_preg_1517, 
                          avg_preg_1819, 
                          avg_preg_2024,
                          avg_preg_2529,
                          avg_preg_3034,
                          avg_preg_3539,
                          avg_preg_40plus
)


#dataframe wrangling
plot_preg_df <- preg_df %>%
  rename("<15" = "pregnancyratelt15",
         "15-17" = "pregnancyrate1517",
         "18-19" = "pregnancyrate1819",
         "20-24" = "pregnancyrate2024",
         "25-29" = "pregnancyrate2529",
         "30-34" = "pregnancyrate3034",
         "35-39" = "pregnancyrate3539",
         "40+" = "pregnancyrate40plus")


pregnancy_rates <- plot_preg_df %>%
  pivot_longer("<15":"40+", names_to = "age_range", values_to = "pregnancy_rates")
print(pregnancy_rates)


#scatterplot
ggplot(pregnancy_rates, 
       aes(x = age_range, 
           y = pregnancy_rates)) + 
  geom_point(color = "black") +
  geom_point(data = pregnancy_rates, aes(color = "Average")) +
  geom_point(data = pregnancy_rates, aes(color = "Individual Rates")) +
  labs(color = "Key", x = "Age Ranges", y = "Pregnancy Rate (percentage)") +
  scale_color_manual(values = c("red", "black")) +
  geom_point(aes(x = 1, y = avg_preg_lt15), color = "red") +
  geom_point(aes(x = 2, y = avg_preg_1517), color = "red") +
  geom_point(aes(x = 3, y = avg_preg_1819), color = "red") +
  geom_point(aes(x = 4, y = avg_preg_2024), color = "red") +
  geom_point(aes(x = 5, y = avg_preg_2529), color = "red") +
  geom_point(aes(x = 6, y = avg_preg_3034), color = "red") +
  geom_point(aes(x = 7, y = avg_preg_3539), color = "red") +
  geom_point(aes(x = 8, y = avg_preg_40plus), color = "red") +
  ggtitle("Rate of Pregnancy Given Age") 


###########################
##### CHART ANALYSIS ######
###########################

# This chart is necessary in identifying the age ranges that had higher rates of
# pregnancy. As a result, this helps us answer questions concerning what age
# ranges will most likely be impacted by abortion restrictions. By gaining this
# information, we are able to possibly predict current statistics given Roe v.
# Wade's overturn, causing restricted abortions. It seems that pregnancy rates
# are higher among people in their mid to late twenties, meaning that these rates
# may decrease in the future because these pregnancies may not have been planned.
# Consequently, less people may want to get pregnant because the option of an
# abortion may not be viable in their state given current circumstances.


