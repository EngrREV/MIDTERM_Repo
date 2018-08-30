library("OpenImageR")
img3 <- readImage("Penguins.jpg")
imageShow(img3)
res <- Augmentation(img3,resiz_width = 250, resiz_height = 250,rotate_angle = 90,Grayscale)

imageShow(res)
