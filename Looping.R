#IFELSE
a = c(5,7,2,9)
ifelse(a %% 2 == 0,"EVEN","ODD")
#-----------------------------------------------------------#
# NOT RUN {
x <- c(6:-4)
sqrt(x)  #- gives warning
sqrt(ifelse(x >= 0, x, NA))  # no warning
## Note: the following also gives the warning !
ifelse(x >= 0, sqrt(x), NA)
## ifelse() strips attributes
## This is important when working with Dates and factors
x <- seq(as.Date("2000-02-29"), as.Date("2004-10-04"), by = "1 month")
## has many "yyyy-mm-29", but a few "yyyy-03-01" in the non-leap years
y <- ifelse(as.POSIXlt(x)$mday == 29, x, NA)
head(y) # not what you expected ... ==> need restore the class attribute:
class(y) <- class(x)
y
## This is a (not atypical) case where it is better *not* to use ifelse(),
## but rather the more efficient and still clear:
y2 <- x
y2[as.POSIXlt(x)$mday != 29] <- NA
## which gives the same as ifelse()+class() hack:
stopifnot(identical(y2, y))
## example of different return modes (and 'test' alone determining length):
yes <- 1:3
no  <- pi^(1:4)
utils::str( ifelse(NA,    yes, no) ) # logical, length 1
utils::str( ifelse(TRUE,  yes, no) ) # integer, length 1
utils::str( ifelse(FALSE, yes, no) ) # double,  length 1
# }
#----------------------------------------------------------#
x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found")
} else {
  print("Truth is not found")
}
#----------------------------------------------------------#
x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#

#FORLOOPS
for (year in c(2010,2011,2012,2013,2014,2015)){
  print(paste("The year is", year))
}
#----------------------------------------------------------#
for (year in 2010:2015){
  print(paste("The year is", year))
}
#----------------------------------------------------------#
for (i in 2010:2015){
  print(paste("The year is", i))
}
#----------------------------------------------------------#
for (i in 1:10) {
  if (!i %% 2){
    next
  }
  print(i)
}
#----------------------------------------------------------#
x <- c(2,5,3,9,8,11,6)
count <- 0
for (val in x) {
  if(val %% 2 == 0)  count = count+1
}
print(count)
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#

#WHILELOOP

i <- 1
while (i < 6) {
  print(i)
  i = i+1
}
#----------------------------------------------------------#
v <- c("Hello","while loop")
cnt <- 2

while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}
#----------------------------------------------------------#
x <- 1
while(x < 5) {
  x <- x+1; 
  print(x);
}
#----------------------------------------------------------#
#Create a variable with value 1
begin <- 1

#Create the loop
while (begin <= 10){
  
  #See which we are  
  cat('This is loop number',begin)
  
  #add 1 to the variable begin after each loop
  begin <- begin+1
  print(begin)
}

#----------------------------------------------------------#
set.seed(123)
# Set variable stock and price
stock <- 50
price <- 50

# Loop variable counts the number of loops 
loop <- 1

# Set the while statement
while (price > 45){
  
  # Create a random price between 40 and 60
  price <- stock + sample(-10:10, 1)
  
  # Count the number of loop
  loop = loop +1 
  
  # Print the number of loop
  print(loop)
}
#----------------------------------------------------------#
#----------------------------------------------------------#
#BREAK AND NEXT
x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}
#----------------------------------------------------------#
x <- 1
while(x < 5) {
  x <- x+1; 
  if (x == 3) break; 
  print(x); 
  }
#----------------------------------------------------------#
x <- 1
while(x < 5) {x <- x+1; 
if (x == 3) next; 
print(x);}
#----------------------------------------------------------#
for (i in 1:10) {
    if (i < 5) next
     print(i)
}
#----------------------------------------------------------#
#----------------------------------------------------------#
#REPEAT
x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}
#----------------------------------------------------------#
v <- c("Hello","loop")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt+1
  
  if(cnt > 5) {
    break
  }
}
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
#----------------------------------------------------------#
