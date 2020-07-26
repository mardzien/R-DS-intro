library(ggplot2)
library(ggthemes)

### Histogram of hwy mpg values:
# pl <- ggplot(mpg, aes(x = hwy)) + geom_histogram(aes(fill = "orange", alpha = 0.5))
# print(pl)


### Barplot of car counts per manufacturer with color fill defined by cyl count
# pl <- ggplot(mpg, aes(x = manufacturer))
# pl2 <- pl + geom_bar(aes(fill = factor(cyl)))
# print(pl2)


# Switch now to use the txhousing dataset that comes with ggplot2
# Create a scatterplot of volume versus sales. Afterwards play around with
# alpha and color arguments to clarify information.

pl <- ggplot(txhousing, aes(x = sales, y = volume))
pl2 <- pl + geom_point(color = "blue", alpha = 0.5) + geom_smooth(color = "red")
print(pl2)