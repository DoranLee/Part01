# 반복문(for loop)

for (i in 1:10){
  print(i)
}

# Q1. 1부터 10까지 더하는 for문(hint:result+1)
result<-0
for (a in 1:10){
  result <- result+a
}
print(result)

# Q2. 앞의 두 수 더하기(피보나치 수열)
# 1 1 2 3 5 8 13 21 ...
obj1<-1
obj2<-1
pibo<-0
obj1
obj2
for (b in 1:10){
  pibo<- (obj1+obj2)
  obj1<-obj2
  obj2<-pibo
  print(pibo)
}

# Q3. 첫번째 세번째 수 구하여 네번째수
# 1  2  3  4  6  9  13  19  28
# a1 a2 a3 r
#    a1 a2 a3 r
#       a1 a2 a3 r ...

a1 <- 1
a2 <- 2
a3 <- 3

for (i in 1:10) {
  r <- (a1+a3)
  a1 <- a2
  a2 <- a3
  a3 <- r
  print(r)
}


# 이중 for문

for (i in 1:3) {
  for (j in 1:3){
    print(paste(i,j))
  }
}

for (i in 2:9) {
  print(paste(i,'단'))
  for (j in 1:9){
    print(paste(i,'*',j,'=',i*j))
  }
}

cat(1,3,5)


# break : 현재 수행 중인 loop 전체 종료
# next : 현재 돌고 있는 loop 1회를 바로 종료
#        밑에 있는 코드는 수행하지 않는다.(continue)
# case별 break와 next를 각각 넣어보기

# case1
for (i in 2:9){
  for (j in 1:9){
    print(i*j)
    if (j==5){
      next # j==5가 TRUE면 break
            # break를 감싸고 있는 j for문을 종료
    }
  }
}
# case2
for (i in 2:9){
  for (j in 1:9){
    if (j==5){
      next 
    }
    print(i*j)
  }
}
# case3
for (i in 2:9){
  print(paste(i,'단'))
  if (i==5){
    next
  }
  for (j in 1:9){
    print(i*j)
  }
}
# case4
for (i in 2:9){
  if (i==5){
    next
  }
  print(paste(i,'단'))
  for (j in 1:9){
    print(i*j)
  }
}