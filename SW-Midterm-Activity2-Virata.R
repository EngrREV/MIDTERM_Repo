library(magick)
source("http://bioconductor.org/biocLite.R")
biocLite("EBImage")
library("EBImage")
library(EBImage)

##LOCALLY
img <- readImage("Penguins.jpg")
resize1 <- function(img, x1, x2){
  y <- resize(img, w =x1, h=x2)
  display(y)
}

grayscale1 <- function(img, x1){
  if(x1== TRUE){
    colorMode(img) = Grayscale
    display(img, all=TRUE)
  }
  else if(x1 == FALSE){
    colorMode(img) = Color
    display(img, all=TRUE)
  }
  else{
    print("Input should only be TRUE or FALSE")
  }
}
grayscale1(img, TRUE)

invert1 <- function(img, x1){
  Imagetr <- translate(rotate(img, x1), c(50, 0))
  display(Imagetr)
}
invert1(img, 90)

##WEB
img2 <- image_read('https://cdn.audubon.org/cdn/farfuture/isFXICZqsd8Lnl6E1fopOWgnVgtnO6gH92ERIPghgAQ/mtime:1497976031/sites/default/files/styles/hero_image/public/sfw_15586958314_eabee7f9c4_o.jpg?itok=ChfIAgGQ')
img2

resize2 <- function(img2, x1){
  a <- image_resize(img2, x1)
  a
}
resize2(img2, 500)

grayscale2 <- function(img2, x1){
  if(x1== TRUE){
    image_convert(img2,type = 'Grayscale')
  }
  else if(x1 == FALSE){
    img2
  }
  else{
    print("Input should only be TRUE or FALSE")
  }
}
grayscale2(img2, 2)

invert2 <- function(img2, x1){
  image_rotate(img2, x1)
}
invert2(img2, 45)
