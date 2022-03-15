# 조건문(if문)

# if (조건식){
#   조건식의 결과가 TRUE일 때 실행
# }

if (1==1){
  print('hello')
}

# if - else
# if (조건식1){
#   조건식1이 TRUE일 때 실행
# } else{
#     조건식1이 FALSE일 때 실행
# }

a<-100
b<-10
if (a>b){
  print(a)
} else {
  print(b)
}

# if - else if - else
# if (조건식){
#   조건식이 TRUE일 때 실행
# } else if (조건식2){
#   조건식2가 TRUE일 때 실행
# } else {
#   모든 조건식이 FALSE일 때 실행
# }

h<-171
w<-80
t<-(h-100)/w
if (t<0.5){
  status<-'고도비만'
} else if (t<=0.6){
  status<-'비만'
} else if (t<=0.8){
  status<-'정상'
} else {
  status<-'마름'
}
print(status)

# ------

int1<-100
int2<-120
int3<-140

if (int1>int2 & int1>int3){
  print('int1이 가장 큽니다')
} else if (int2>int1 & int2>int3){
  print('int2가 가장 큽니다')
} else {
  print('int3이 가장 큽니다')
}
