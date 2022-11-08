library("tidyverse")
library(readxl)
Strawberries <- read_xlsx("~/Desktop/Strawberries/strawberries-2022oct30-a (1).xlsx",col_names=T)


#1

285*100


#2

Data_Q2 <- filter(Strawberries %>% filter(Year == "2016", State == "CALIFORNIA"), Domain=="ORGANIC STATUS")
View(Data_Q2)

range <- 231304956*1.96*0.137
lower <- 231304956-62110007
upper <- 231304956+62110007


#3

Data_Q3 <- filter(Strawberries %>% filter(Year == "2016", State == "CALIFORNIA"), Domain=="Total")
View(Data_Q3)


#4

strawb_chem %>% group_by(State) %>% 
  summarize(count_distinct = n_distinct(chem_name))






