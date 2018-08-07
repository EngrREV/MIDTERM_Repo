add5numbers <- function(num1,num2,num3,num4,num5){
    sum_nums = num1 + num2 + num3 + num4 + num5
    sum_num
}
add5numbers(123,123,123,123,123)
#---------------------------------------------------------------#
x<- 1:100
#---------------------------------------------------------------#
subset_data <- function(dataset,min_dataset,max_dataset){
  subset_param <- (dataset > min_dataset) & (dataset<max_dataset)
  dataset[subset_param]
}
subset_data(x,1,100)
#---------------------------------------------------------------#
dotosot <- read.csv("midetrmseatwork_data.csv")
MeanFunction <- function(dataset_csv,removeNA = TRUE){
  col_num <- ncol(dataset_csv)
  means_per_col <- numeric(col_num)
  for(element in 1:col_num){
    means_per_col[element] <- mean(dataset_csv[,element],na.rm = removeNA)
  }
  means_per_col
}
MeanFunction(dotosot[3])
