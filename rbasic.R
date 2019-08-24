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