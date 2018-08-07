#1
subset_data <- function(data,min,max){
  x <- ifelse(data$Ozone>min & data$Temp>max,data$Wind,NA)
  mean(x,na.rm = TRUE)
}
subset_data(data,25,70)

#2
MeanFunction <- function(data,Month,Day){
  y <- 0
  for (row in 1:nrow(data)) {
    y[row]<- ifelse(data[row,5]==Month & data[row,6]==Day,data[row,4],NA)
  }
  mean(y,na.rm = TRUE)
}
MeanFunction(data,9,8)
#3
MinFunction <- function(data,Month){
  y <- 0
  for (row in 1:nrow(data)) {
    y[row]<- ifelse(data[row,5]==Month,data[row,1],NA)
  }
  min(y,na.rm = TRUE)
}
MinFunction(data,5)
MinFunction(data,6)
MinFunction(data,7)
MinFunction(data,8)
MinFunction(data,9)