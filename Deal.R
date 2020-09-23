library(readxl)
exdata1 <- read_excel("Sample1.xlsx")
exdata1
str(exdata1)
dim(exdata1)
View(exdata1)
str(exdata1)
df <- data.frame(sex = c("M","F",NA,"M","F"),score=c(5,4,3,4,NA))
df
class(df$sex)
class(df$score)
summary(df)
is.na(df)
table(df)
table(is.na(df))
library(dplyr)
library(readxl)
df <- rename(df, score = s, sex = s)


install.packages(dplyr)
library(dplyr)
exdata1 <- rename(exdata1, Y17_AMT = AMT17, Y16_AMT = AMT16)
View(exdata1)
