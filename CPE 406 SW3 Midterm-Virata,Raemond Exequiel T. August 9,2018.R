
install.packages("data.table")
library("data.table")
data <- read.csv("midetrmseatwork_data.csv")
#1
subset_data <- function(data,row_num,col_num){
data[row_num,col_num]
   }
subset_data(data,12,'Wind')

#2
 MissingVal<- function(data, z){
  if(z=='Ozone'||z=='Temp'||z=='Solar.R'||z=='Wind'){
    a <- data[ ,z]
    d <- sum(is.na(a))
    d
  }
  else{
    print("INCORRECT PARAMETERS")
  }
}
MissingVal(data, 'Ozone')
#3
MeanVal <- function(data, a, b, c){
  if(c=='Ozone'||c=='Solar.R'||c=='Wind'||c=='Temp'){
    row_name <- data[a:b, c]
    mean(row_name, na.rm = TRUE)
    
  }
  else{
    print("INCORRECT PARAMETERS")
  }
}
MeanVal(data, 20, 70,'Wind')
