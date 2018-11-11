#Juho Saari
#11.11.2018
#Dataset for IODS 2018 exercises.

library(dplyr)

# read the data into memory
lrn14 <- read.table("http://www.helsinki.fi/~kvehkala/JYTmooc/JYTOPKYS3-data.txt", sep="\t", header=TRUE)

# look at the dimensions of the data
dim(lrn14)
#The dataset has 183 rows and 60 clumns.

# look at the structure of the data
str(lrn14)
#Gender is factor, rest int. For analysis, the columns need to be comined according to their categories.

#Question categories.
deep_questions <- c("D03", "D11", "D19", "D27", "D07", "D14", "D22", "D30","D06",  "D15", "D23", "D31")
surface_questions <- c("SU02","SU10","SU18","SU26", "SU05","SU13","SU21","SU29","SU08","SU16","SU24","SU32")
strategic_questions <- c("ST01","ST09","ST17","ST25","ST04","ST12","ST20","ST28")

#Combigning categories to columns by mean

#Deep
deep_columns <- select(lrn14, one_of(deep_questions))
lrn14$deep <- rowMeans(deep_columns)

#Surface
surface_columns <- select(lrn14, one_of(surface_questions))
lrn14$surf <- rowMeans(surface_columns)

#Strategic
strategic_columns <- select(lrn14, one_of(strategic_questions))
lrn14$stra <- rowMeans(strategic_columns)

#Filter out those participants that had 0 points.
lrn14 <- filter(lrn14, Points > 0)

#Keep only these columns for the final dataset.
keep_columns <- c("gender","Age","Attitude", "deep", "stra", "surf", "Points")
learning2014 <- select(lrn14, one_of(keep_columns))

str(learning2014)
#The data has now 166 observations of 7 variables.

setwd("C:/R_work/GIT/IODS-project/IODS-project")
write.table(learning2014, file = "learning2014.csv")
readtest<-read.table(file= "learning2014.csv")
str(readtest)
head(readtest)
rm(readtest)
#The dataset appears to be right.


