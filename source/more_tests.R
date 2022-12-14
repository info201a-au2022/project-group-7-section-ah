---
  title: "Post-Roe Impacts on America"
author: "Erica Huynh, Jasmine Vuong, Michelle Kim"
date: "11/14/2022"
output: html_document
---
  
  ```{r setup, include=FALSE}
source("../source/summary_info.R")
knitr::opts_chunk$set(echo = TRUE)
```


## Dynamic Paragraph


Throughout this analysis, we used one dataset describing rates of abortion, birth, pregnancy, etc. By gathering these values, we will be able to thoroughly present the impact of Roe v. Wade’s court case decision to decriminalize abortion. The data presented in the following values are from women aged 14 to 54 during 1978 to 2017.

For example, we calculated the highest and lowest abortion rate. The highest abortion rate was in 1988 with a rate of 79.3, while the lowest abortion rate was in 2017 with a rate of 4.5. Through this information, we are able to conclude that after Roe’s decision, the frequency of abortions were at its peak. However, with more recent dates, we can see that there has been a general decrease in abortion rates, leading to the lowest abortion rate recorded in 2017. In Chart 2, we discuss how the declining rates are a result of the politicization of abortions between Democrats and Republicans. These Republican views tend to support pro-life beliefs against abortions and create legislation restricting it, which has been going on since the early 2000’s in Texas.

Based on the birth rates from women, the highest birth rate was in 2007 with a rate of 95.7, which is also represented in Chart 1. We noticed that in 2007, the Federal Partial Birth Abortion Ban Act was passed, restricting more women from having abortions. This would explain the high birth rates in 2007 because abortions have become more stigmatized from this act.

From pregnancy rates, the highest rate was in 1988 with a rate of 159.7, while the lowest rate was in 2017 with a rate of 70.2. With this decrease in pregnancy rates, it tells us that there are less people pregnant as of recent dates, impacting the age groups from 20-29 years old given Graph 3. This change between rates signifies the possibility of Roe’s decision as more people may be choosing to have abortions, therefore lowering the pregnancy rate. The overturn of this case in 2022 may lead to a spike of higher pregnancy rates in the future because of lack of resources for pregnant people who do not want to be pregnant anymore, affecting these numbers.

With all of this in mind, more abortion restrictions may lead to higher birth and pregnancy rates, leading to lower abortion rates due to the limited access across America, especially in abortion-restricted states. The values gathered from this dataset will help our group in creating our final deliverable in spreading awareness about the impact of Roe v. Wade’s court case decision.


## Summary Information
```{r, warning=F, echo=F}
library(knitr)
source("/Users/michelleejkim/documents/info_201/assignments/project-group-7-section-ah/source/summary_info.R")
```

### Example 1: Source some code and run a function
```{r}
# Example 1: Note relative path, which can be read: Up one
# directory(..), down into source (/source), and 
# then "source" an R file (data_access.R)
source("../source/data_access.R")
data_access_test()
```

### Example 2: Initialize a variable and then use it
```{r}
# Example 1: This function was "sourced" above
msg <- data_access_test(" Morgan!")
```

> `r msg` Hope you have a good day!! 
  
  ## ABOUT THIS FILE: 
  
  This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
  
  ```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:
  
  ```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
