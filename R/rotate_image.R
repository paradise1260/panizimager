rotate_image <- function(img, rot_num = 1) {
    if(rot_num == 0) {
        return (img)
    } else {
        df <- as.data.frame(img)
        x <- df$x
        y <- df$y
        df$x <- y
        df$y <- x
        df$y <- rev(df$y)
        img <- as.cimg(df, dims = c(dim(img)[2], dim(img)[1], dim(img)[3], dim(img)[4]))
        return (rotate_image(img, rot_num-1))
    }
}
