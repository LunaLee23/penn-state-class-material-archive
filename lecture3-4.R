library(tidyverse)
mtcars

# Summary of data
summary(mtcars)  # show basic descriptive statistics
str(mtcars)  # can see what kind of data set the data has
dim(mtcars)  #number of rows and columns, multiplication할 때면 이걸 잘 확인하지 않으면 error 나와서 확인해야 함

# Mathematical Functions -> computing numeric values
sum(1,2,3,4,5)
sum(101, 102,103,104,105)

mean(1,2,3,4,5) #wrong way.. instead
mean(c(1,2,3,4,5))  #should include c if there's plural items
sin(pi)

# Comparing things
1 ==2
1 != 2
1 < 2
1 >= 2

# Assigning Variables
x <- mean (c(100,102,103,106,108))
x
y <- 3
y

z <- y-3
z

#Exercise
y <- 5
sqrt(y)
log(y)

x <- 3
x
z <- x-3
z

one_plus_two <- 1+2 #띄어쓰기 못함 그래서 대신 _사용 
one_plus_two

# managing environment
x <- 5
y <- 3

ls() # 현재 R 환경(environment)에 저장된 객체들의 이름을 보여주는 함수
rm() #variable삭제 함수

# Data Type
typeof(0.32)
typeof(3)
typeof(1L)
typeof(T)
typeof(FALSE)
typeof("apple")

as.character(3)
as.numeric(TRUE)

##################################################################
# lecture 4
##################################################################

# data types
is.numeric(3)  # <- for logical test
is.double(4)  # <- for logical test

# vector
x <- c(1,2,3,4,5)
x
y <- c("apple","banana","orange")
y

#working with vectors
c(1,2,3,"apple")  #한 벡터에 chr랑 int섞이면 모두 chr취급
x <- c(1,2,3)
y <- c(4,5,6)
z <- c(x,y)
z

# sequences
1:10
?seq
5:1
seq(from=1,to=11,by=2)
seq(5,1,-2)
seq(from=10,to=-1,by=-2)

?mtcars
# subset/extract
x <- c(1,2,3,4,5)
x[1]
x[2]
x[-1]
x[2:4]

####################################################################3
# lecture 5
####################################################################

# missing value
z <- c(1:3,NA)
z
z[1]
z[2]
z[-1]
!is.na(z)
z[!is.na(z)]  #어디가 na없는지 알수있는 코드
is.na(z)

x <- c(-2,-1,0,1,NA, NA)
x[!is.na(x) & x>0] #missing value NA가 아니면서 양수인 값 

x <- c(-1,1,-2,2,-3,3)
x[-(1:2)]  #-는 exclude, 앞에 1~2까지의 값을 exclude

# vector(conti)
fruit <- c(1,2,5,10)
names(fruit) <- c("orange","banana","apple","peach")
lunch <- fruit[c("apple","orange")]
lunch

z[is.na(z)] <- 0 #missing value 0으로 
z

# missing regards of numerical computation
0/0  #not determined -> NAN
Inf - Inf  # NAN
# git hub check

