setwd("C:/R_work/GIT/IODS-project/IODS-project")

library(readr)
library(ggplot2)
library(dplyr)

Carr<-cars
colnames(Carr)
Carr<-rename(Carr, spd=speed)
colnames(Carr)