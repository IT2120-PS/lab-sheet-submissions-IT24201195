getwd()
setwd("C:/Users/it24201195/Desktop/IT24201195")

---01

Delivery_Times<- read.table("Exercise - Lab 05.txt",header=TRUE,sep= ",")
fix(Delivery_Times)
attach(Delivery_Times)

---02
names(Delivery_Times)<-c("X1")
attach(Delivery_Times)
hist(X1,main="Histogram for Delivery Times")

histogram<- hist(X1,main="Histogram for Delivery Times",breaks = seq(20,70,length = 10),right = FALSE)
?hist


---04

breaks<- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
cum.freq <- cumsum(freq)
new<- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(mids,cum.freq, type = 'o', main = "Cumalative Frequency Polygon for Delivery Times", xlab = "Delivery Times", ylab = "Cumalative Frequency")