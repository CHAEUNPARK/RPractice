getwd()
dir.create("D:/Rscript/Practice/data")

if(!dir.exists("D:/Rscript/Practice/data"))
  dir.create("D:/Rscript/Practice/data")
  print("create dir success")
else
  print("dir is already existed")

print('a')
print("a")

# cat('a', ":", 3, "b", ":", "9")
paste('a', ":", 3, "b", ":", "9")

#' cat보다는 paste를 R에서 더 자주 쓴다.
#' 주석 단축키는 Ctrl + Shift + C
#' 주석 옆에 '를 붙이고 엔터 누르면 여러줄 주석 빠르게 가능
#' 

test <- c(1, 2, 3, 4)
df <- iris
ls()

rm(list = ls()) # 객체 전체 삭제
rm(a, test) # 각각 삭제

# gc()

install.packages(c("ggplot2", "dplyr", "stringr"))
#  or
pkg_list <- c("ggplot2", "dplyr", "stringr")
install.packages(pkg_list)

a <- installed.packages()
b <- a[,1]

# import
library(ggplot2)
require(ggplot2)

data <- airquality
sum(is.na(data))

data$Ozone # 벡터
data["Ozone"] # list(data.frame)
data[["Ozone"]] #벡터
data[1] # list(data.frame)
data[[1]] #벡터

which(is.na(data$Ozone))
data_omit <- na.omit(data)

#' <Data type>
#' 1. Boolean : TRUE, FALSE
#' 2. Integer : 정수
#' 3. Double : 실수
#'    Numeric
#' 4. Character : 문자형
#' 5. factor : 명목형(Categorical)
#'    ex) (대, 중, 소), (남, 여)
#'    level성질 
#'    


df <- data.frame(x = c(1,2,3,4),
                 y = c("a", "b", "c", "d"),
                 z = c("A", "B", "C", "D"))
df

df <- iris
names(df)
df [-5]
df
df [-c(3,4)]

library(dplyr)

#'
#'  pipeline coding
#'  
#'  df %>% select .... %>% group_by %>% summarize

comp1 <- c("a", "b", "c", "d" )

c("a", "c") %in% comp1
comp1 %in% c("a", "c")


lst <- list(name="hyo", addr="seoul", tel="010", pay=c('500', '600'))
lst$name
lst['name']
lst[1]
lst$pay
lst$pay[1]
lst[['pay']][1]
lst[[4]][1]
lst$pay[-2]
lst[['pay']][-2]
lst[[4]][-2]
lst1 <- lst[-c(1,2,3)]$pay[1]
lst1
lst[4]$pay[1]


lst[[4]][][1]


# 벡터 연산
tmp <- c()


getwd()

df_coffee_utf8 <- read.csv("./data/example_coffee_utf8.csv", stringsAsFactors = F, encoding = 'UTF-8')
str(df_coffee)
df_coffee <- read.csv("./data/example_coffee.csv", stringsAsFactors = F, encoding = 'CP949')
df_coffee

install.packages("data.table")
library(data.table)
df_coffee <- fread('./data/example_coffee.csv', stringsAsFactors = F, data.table = F)
df_coffee
str(df_coffee)


# lapply

####################################################################
library(reshape2)
head(french_fries)
df <- french_fries
m <- melt(df, id.vars = 1:4)
m
