# Ex 1: Recreate the following dataframe by creating vectors and using the data.frame function:

Name <- c("Sam", "Frank", "Amy")
Age <- c(22, 25, 26)
Weight <- c(150, 165, 120)
Sex <- c("M", "M", "F")

df <- data.frame(row.names = Name, Age, Weight, Sex)

# Ex 2: Check if mtcars is a dataframe using is.data.frame()

is.data.frame(mtcars)

# Ex 3: Use as.data.frame() to convert a matrix into a dataframe:

mat <- matrix(1:25, nrow = 5)

df1 <- as.data.frame(mat)

# Ex 4: Set the built-in data frame mtcars as a variable df. We'll use this df variable for the rest of the exercises.

df <- mtcars

# Ex 5: Display the first 6 rows of df

head(df)

# Ex 6: What is the average mpg value for all the cars?
mean(df$mpg)

# Ex 7: Select the rows where all cars have 6 cylinders (cyl column)

df[df$cyl == 6,]

# Ex 8: Select the columns am,gear, and carb.

df[,9:11]

# Ex 9: Create a new column called performance, which is calculated by hp/wt.
df$preformance <- df$hp / df$wt

# Ex 10: What is the average mpg for cars that have more than 100 hp AND a wt value of more than 2.5.
mean(df[df$hp > 100 & df$wt > 2.5,]$mpg)


# Ex 11: What is the mpg of the Hornet Sportabout?

df["Hornet Sportabout",]$mpg
