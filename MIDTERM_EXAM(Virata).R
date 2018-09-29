##Midterm Exam(Virata)
##Late
library(argparser)
library(argparse)
library(imager)


##COllect Arguments
args <- commandArgs(trailingOnly = TRUE)

## Default setting when no arguments passed
if(length(args) < 1) {
  args <- c("--help")
}

## --help
if("--help" %in% args) {
  cat("FORMAT: Rscript.exe 'name_of_file'.R --location='location of the images' --width='width of the image' --height='height of the image' --rotate='angle of rotation' --grayscale='TRUE if grayscale, FALSE if not'")
  q(save="no")
}

parseArgs <- function(x) strsplit(sub("^--", "", x), "=")
argsDF <- as.data.frame(do.call("rbind", parseArgs(args)))
argsL <- as.list(as.character(argsDF$V2))
names(argsL) <- argsDF$V1

location_param  <-as.character(argsL$location)
height_param <-as.numeric(argsL$height)
width_param  <-as.numeric(argsL$width)
rotate_param <-as.numeric(argsL$rotate)
gray_param   <-as.logical(argsL$grayscale)

main <- function(location, resize_h, resize_w, rotate, gray){
##
files <- list.files(path=location, pattern = "*.jpg|*.JPG|*.png|*.PNG", full.names=TRUE)
x <- length(files)

for (k in 1:length(files)) {
  image <- load.image(files[k])
  #RESIZE
  im_resize <- resize(image, size_x = resize_w, size_y = resize_h)
  #Rotate
  im_rotate <- imrotate(im_resize, angle = rotate)
  #Grayscale
  if(gray== TRUE){
    im_gray <- grayscale(im_rotate, method = "Luma")
    plot(im_gray)
    aug_image <-"C:/Users/RaemondVirata30/Desktop/DataScience/augmented-images/"
    save_augimage <- paste(aug_image, paste("new augmented_image", k,".jpg")) 
    save.image(im_gray,save_augimage)
  } else if(gray == FALSE){
    plot(im_rotate)
    aug_image <-"C:/Users/RaemondVirata30/Desktop/DataScience/augmented-images/"
    save_augimage <- paste(aug_image, paste("new augmented_image", k,".jpg")) 
    save.image(im_rotate,save_augimage)
    
  }
  else{
    cat("Input should only be TRUE or FALSE")
  }

}
}
main(location_param, height_param, width_param, rotate_param, gray_param)
