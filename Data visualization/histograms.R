library(ggplot2)
library(ggplot2movies)

# DATA & AESTHETICS layers

pl <-  ggplot(movies, aes(x = rating))

# GEOMETRY layer

pl2 <- pl + geom_histogram(binwidth = 0.1, aes(fill = ..count..))


pl3 <- pl2 + xlab('Movie Rating') + ylab('Count') + ggtitle('My title')

print(pl3)
