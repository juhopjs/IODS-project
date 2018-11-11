#setwd("C:/R_work/GIT/IODS-project/IODS-project")

#library(readr)
#library(ggplot2)
#library(dplyr)

#Carr<-cars
#colnames(Carr)
#Carr<-rename(Carr, spd=speed)
#colnames(Carr)

#Juho Saari
#11.11.2018
#Dataset for IODS exercises.

learning2014 <- read_delim("http://www.helsinki.fi/~kvehkala/JYTmooc/JYTOPKYS3-data.txt", "\t", escape_double = FALSE, trim_ws = TRUE)


Write your name, date and a one sentence file description as
a comment on the top of the script file. Save the script for example
as 'create_learning2014.R' in the 'data' folder.
Complete the rest of the steps in that script.

library(GGally)
library(ggplot2)
