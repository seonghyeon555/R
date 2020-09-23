x <- c(1:20)
matrix(x, nrow = 4, ncol =5, byrow = T)
x2 <- seq(1,100,2)
matrix(x2, nrow = 10, ncol = 5, byrow = T)

y <-c(1:40)
array(y, dim = c(4,5,2))

list1 <- list(c(1,2,3),"hello")
list1
str(list1)


ID = c('1', '2', '3', '4', '5')
MID_EXAM = c(10, 25, 100, 75, 30)
CLASS = c('1반', '2반', '3반', '4반', '5반')
data.example_test <- data.frame(ID, MID_EXAM, CLASS)
data.example_test

NAME = c("홍", "김", "이", "정")
eng = c(80, 90, 85, 90)
mat = c(100, 80, 90, 70)
data.example_test <- data.frame(NAME,eng,mat)
data.example_test

