library(magick)
source("http://bioconductor.org/biocLite.R")
biocLite("EBImage")
library("EBImage")
library(EBImage)

##LOCALLY
img <- readImage("Penguins.jpg")
  y <- resize(img, w =250, h=250)
display(y)

##WEB
img2 <- image_read('https://cdn.audubon.org/cdn/farfuture/isFXICZqsd8Lnl6E1fopOWgnVgtnO6gH92ERIPghgAQ/mtime:1497976031/sites/default/files/styles/hero_image/public/sfw_15586958314_eabee7f9c4_o.jpg?itok=ChfIAgGQ')
a <-image_resize(img2,200)
a
