v <- c(1:3)
mat <- matrix(1:10, nrow = 2)
df <- mtcars

my.list <- list(v, mat, df)

my.named.list <- list(my.vector = v, my.matrix = mat, my.df = df)

my.list[3]
my.named.list$my.df
my.named.list[3]
