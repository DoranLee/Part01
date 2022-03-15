# apply(x, margin, function)
#   margin : 1->행, 2->열
# 행과 열 단위로 연산을 수행할 수 있는 함수

iris   # 내장 데이터 : data() + ctrl + Enter
str(iris)   # 구조 확인
View(iris)  # 데이터 확인

apply(iris[,1:4], 2, sum)
apply(iris[,c(1,4)], 2, mean) # 평균
apply(iris[,1:4], 2, min)
apply(iris[,1:4], 2, max)

# root mean square : 제곱의 평균의 제곱근
rms <- function(vector){
  result <- 0
  for (i in vector){
    result <- result + i**2
  }
  return((result / length(vector))**0.5)
}
apply(iris[,1:4], 2, rms)


# lapply(x, function)
# 연산 결과를 리스트로 반환
temp <- lapply(iris[,1:4], sum)
temp
for (i in 1:4){
  print(sum(iris[,i]))
}

# sapply(x,function)
# 연산 결과를 벡터로 반환
a <- sapply(iris[,1:4], sum)
a

obj1 <- c(1,2,3,4)
obj2 <- c(3,4,5,6)
obj1+obj2

a+c(1,2,3,4) # a가 벡터인지 확인용
