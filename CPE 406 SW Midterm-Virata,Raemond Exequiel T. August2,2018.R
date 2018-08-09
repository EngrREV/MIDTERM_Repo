install.packages("data.table")
library("data.table")
data <- read.csv("midetrmseatwork_data.csv")

#Task 1 using If
data <- read.csv("midetrmseatwork_data.csv")

if("Ozone" %in% data){
  sub = subset(data, Ozone > 25 & Temp > 70, select = Wind)
  apply(sub, 2, mean)
  print(apply(sub, 2, mean));
}
