library(ggplot2)

df <- mtcars


# data & aestetics
pl <- ggplot(df, aes(x = wt, y = mpg))

# geometry
# pl2 <- pl + geom_point(aes(size = hp))
# pl2 <- pl + geom_point(size = 3, aes(shape = factor(cyl), 
#                                      color = (factor(cyl))))


pl2 <- pl + geom_point(aes(color = hp), size = 3)

pl3 <- pl2 + scale_color_gradient(low = "green", high = "red")


print(pl3)