v1 <- c(1,2,3)
v2 <- c(4,5,6)
arr <- array(c(v1,v2))

test_that('Please enter an integer for the number of rotations!', {
    expect_error(rotate_image(boats, 3.4))
})
test_that('Please enter an integer for the number of rotations!', {
    expect_error(rotate_image(boats, 'hello'))
})
test_that('Please enter a loaded image via imager library: image <- load.image("<image_path>.png")', {
    expect_error(rotate_image(4, 3))
})
test_that('Please enter an image array with 4 dimensions!', {
    expect_error(rotate_image(arr, 3))
})
