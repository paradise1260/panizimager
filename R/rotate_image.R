#' Rotate an image counter-clockwise
#'
#' rotate_image rotates an image counter-clockwise for a given number of times.
#'
#' @param img image loaded via imager library
#' @param rot_num integer
#'
#' @return array of image
#' @export
#'
#' @examples
#' library(imager)
#' rotate_image(boats, 3)
rotate_image <- function(img, rot_num = 1) {
    # Handling Errors
    if(rot_num %% 1 != 0) {
        stop('Please enter an integer for the number of rotations!')
    }
    if(class(img)[1] != 'cimg') {
        stop('Please enter a loaded image via imager library: image <- load.image("<image_path>.png")')
    }
    if(length(dim(img)) != 4) {
        stop('Please enter an image array with 4 dimensions!')
    }

    # Image Rotation
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
