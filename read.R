excel_data_ex <- read_excel("data_ex.xls")
excel_data_ex

ex_data <- read.table("data_ex.txt",header = TRUE ,fileEncoding = "euc-kr")
ex_data
ex_data2 <- read.table("data_ex.txt",header = TRUE,skip = 2,fileEncoding = "euc-kr")
ex_data2
ex_data3 <- read.table("data_ex.txt",header = TRUE,nrows = 3,fileEncoding = "euc-kr")
ex_data3

ex_data4 <- read.table("data_ex.txt",header = TRUE,fileEncoding = "euc-kr")
View(ex_data4)

ex_data5 <- read.table("data_ex1.txt",header = TRUE,sep=",",FileEncoding = "euc-kr)
View(ex_data5)
