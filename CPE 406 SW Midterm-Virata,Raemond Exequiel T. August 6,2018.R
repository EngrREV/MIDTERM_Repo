#1
data <- read.csv("midetrmseatwork_data.csv")
x<- ifelse(data$Ozone>25 & data$Temp>70,data$Wind,NA)
mean(x,na.rm = TRUE)

#2
y <- 0
for (row in 1:nrow(data)) {
  y[row]<- ifelse(data[row,5]==9 & data[row,6]==8,data[row,4],NA)
}
mean(y,na.rm = TRUE)

#3
b<-0
good<-complete.cases(data)
b<-data[good,]
val<-data[1,1]
i<-2
flag <- 0
while (i<=nrow(b)){
if(val >b[i,1] && b[i,5]==5){
  val<-b[i,1]
}
  if(b[i,5]==6){
    if(flag == 0){
      flag<- flag +1
      val2<-data[i,1]
    }
    else{
        if(is.na(val2)){
          val2 <- b[i,1]
        }
      else if (val2 > b[i,1]){
        val2<-b[i,1]
      }
    }
  }
  if(b[i,5]==7){
    if(flag == 1){
      flag<- flag +1
      val3<-data[i,1]
    }
    else{
      if(is.na(val3)){
        val3 <- b[i,1]
      }
      else if (val3 > b[i,1]){
        val3<-b[i,1]
      }
    }
  }
  if(b[i,5]==8){
    if(flag == 2){
      flag<- flag +1
      val4<-data[i,1]
    }
    else{
      if(is.na(val4)){
        val4 <- b[i,1]
      }
      else if (val4 > b[i,1]){
        val4<-b[i,1]
      }
    }
  }
  if(b[i,5]==9){
    if(flag == 3){
      flag<- flag +1
      val5<-data[i,1]
    }
    else{
      if(is.na(val5)){
        val5 <- b[i,1]
      }
      else if (val5 > b[i,1]){
        val5<-b[i,1]
      }
    }
  }
  i<-i+1

}
cat("Minimum Ozone value in Month 5: ",val,"\n")
cat("Minimum Ozone value in Month 6: ",val2,"\n")
cat("Minimum Ozone value in Month 7: ",val3,"\n")
cat("Minimum Ozone value in Month 8: ",val4,"\n")
cat("Minimum Ozone value in Month 9: ",val5,"\n")


#4
##TASK 1
remove(x)
x <- 0
row <-1
repeat{
  x[row]<- ifelse(data[row,1]> 25 & data[row,4]>70,data[row,3],NA)
  if(row == nrow(data)){
    break;
  }
  row<-row +1
}
mean(x,na.rm = TRUE)

##TASK 2
remove(y)
y <- 0
row <-1
repeat{
  y[row]<- ifelse(data[row,5] == 9& data[row,6] == 8,data[row,4],NA)
  if(row == nrow(data)){
    break;
  }
  row<-row +1
}
mean(y,na.rm = TRUE)

##TASK 3
b<-0
good<-complete.cases(data)
b<-data[good,]
val<-data[1,1]
i<-2
flag <- 0
repeat{
  if(val >b[i,1] && b[i,5]==5){
    val<-b[i,1]
  }
  if(b[i,5]==6){
    if(flag == 0){
      flag<- flag +1
      val2<-data[i,1]
    }
    else{
      if(is.na(val2)){
        val2 <- b[i,1]
      }
      else if (val2 > b[i,1]){
        val2<-b[i,1]
      }
    }
  }
  if(b[i,5]==7){
    if(flag == 1){
      flag<- flag +1
      val3<-data[i,1]
    }
    else{
      if(is.na(val3)){
        val3 <- b[i,1]
      }
      else if (val3 > b[i,1]){
        val3<-b[i,1]
      }
    }
  }
  if(b[i,5]==8){
    if(flag == 2){
      flag<- flag +1
      val4<-data[i,1]
    }
    else{
      if(is.na(val4)){
        val4 <- b[i,1]
      }
      else if (val4 > b[i,1]){
        val4<-b[i,1]
      }
    }
  }
  if(b[i,5]==9){
    if(flag == 3){
      flag<- flag +1
      val5<-data[i,1]
    }
    else{
      if(is.na(val5)){
        val5 <- b[i,1]
      }
      else if (val5 > b[i,1]){
        val5<-b[i,1]
      }
    }
  }
  if(i<=nrow(b))
  i<-i+1
  
}
cat("Minimum Ozone value in Month 5: ",val,"\n")
cat("Minimum Ozone value in Month 6: ",val2,"\n")
cat("Minimum Ozone value in Month 7: ",val3,"\n")
cat("Minimum Ozone value in Month 8: ",val4,"\n")
cat("Minimum Ozone value in Month 9: ",val5,"\n")


