ex_data <- read.table("data_ex1.txt",header = TRUE, sep = ",",fileEncoding = "euc-kr")
View(ex_data)

varname <- c("ID","SEX","AGE","AREA")
ex2_data <- read.table("data_ex2.txt", sep = ",", col.names = varname,fileEncoding = "euc-kr")
View(ex2_data)

varname <- c("번호","성별","나이","지역")
ex3_data <- read.table("data_ex2.txt", sep = ",",skip = 1, col.names = varname,nrows = 5 ,fileEncoding = "euc-kr")
View(ex3_data)
