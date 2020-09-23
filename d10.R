library(readxl)
library(dplyr)
exdata1 <- read_excel("Sample1.xlsx")
exdata1 <- rename(exdata1, Y17_AMT = AMT17, Y16_AMT = AMT16)
View(exdata1)

exdata1$AMT <- exdata1$Y17_AMT + exdata1$Y16_AMT
exdata1$CNT <- exdata1$Y17_CNT + exdata1$Y16_CNT
View(exdata1)
x <-85
result <- ifelse(x >= 80,"합격","불합격")
result
result <- ifelse(x >= 90,"A",
                 ifelse(x>=80,"B","F"))
result
exdata1$AVG_AMT <- exdata1$AMT / exdata1$CNT
View(exdata1)

exdata1$AGE50_YN <- ifelse(exdata1$AGE >=50,"Y","N")
View(exdata1)
exdata1$AGE_GR10 <- ifelse(exdata1$AGE >= 50,"A1.50++",
                           ifelse(exdata1$AGE >=40,"A2.4049",
                                  ifelse(exdata1$AGE >=20,"A4.2029",
                                         "A5.0019")))
View(exdata1)

select(exdata1,ID)
exdata1 %>% select(ID)
exdata1 %>% select(ID,AREA, Y17_CNT)
exdata1 %>% select(-AREA)
exdata1 %>% select(-AREA,-Y17_CNT)
exdata1 %>% filter(AREA=="서울" | AREA=="경기")

exdata1 %>% filter(AREA = "서울")
exdata1 %>% filter(AREA =="서울" & Y17_CNT >= 10 & Y17_CNT<=30)
exdata1 %>% filter(AREA !="서울" & SEX=="M")
save(exdata1,file = "exdata1.rda")

a1 <- c(1:9)
a2 <- c(11:19)
df <- data.frame(a1,a2)
df
filter(df,a1 >5)
subset(df, a1>5)
subset(df,a1 >5, select = c(a1,a2))

df<- data.frame(sex=c("M","F",NA,"M","F"),
                score=c(5,4,3,4,NA))
df
sum(df$score)
table(is.na(df))
df %>% filter(is.na(score))
df_nimiss <- df %>% filter(!is.na(score))
df_nimiss
mean(df_nimiss$score)
sum(df_nimiss$score)

load("exdata1.rda")
exdata1 %>% arrange(AGE)
exdata1

x <-85
result <- ifelse(x >= 80,"합격","불합격")
result
result <- ifelse(x >= 90,"A",
                 ifelse(x>=80,"B","F"))
result


