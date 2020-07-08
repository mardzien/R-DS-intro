# creating Data Frames

empty <- data.frame()

c1 <- 1:10
c2 <- letters[1:10]

df <- data.frame(col.name.1 = c1, col.name.2 = c2)



# importing and exporting data

write.csv(df, file = 'saved_df.csv')

df2 <- read.csv('saved_df.csv')

# getting information about DF

print(nrow(df))
print(ncol(df))
print(str(df))
print(summary(df))


# referencing cells

df[[5, 2]]
df[[5, 'col.name.2']]

df[[2, 'col.name.1']] <- 999




# referencing rows
df[1,]


# referencing columns and returning as vectors
mtcars[, 'mpg']
mtcars[,1]


# returning columns as data frame
mtcars['mpg']
mtcars[1]


# returning multiple columns as data frame
mtcars[c('mpg', 'cyl')]
mtcars[c(1:2)]


# adding rows to a data frame

df3 <- data.frame(col.name.1 = 200, col.name.2 = 'new')


dfnew <-rbind(df, df3)

#adding columns to a data frame

df$newcol <- 2 * df$col.name.1
df$newcol.copy <- df$newcol
df[, 'newcol.copy2'] <- df$newcol


# setting/ renaming column names
colnames(df) <- c('1', '2', '3', '4', '5')
