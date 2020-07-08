
#some made up weather data
days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
temp <- c(21, 22, 23, 24, 23)
rain <- c(T, T, F, F, T)


df <- data.frame(days, temp, rain)

# returning vector from data frame
print(df$days)


# returning slice of data frame
print(df['days'])

# returning subset of data frame based on condition
raining.days.df <- subset(df, subset = rain==T)

hot.days.df <- subset(df, subset = temp > 22)

# returning ordered data frame sorted by selected column
sorted.temp <- order(df['temp'])
sorted.temp.df <- df[sorted.temp,]

descending.temp <- order(-df['temp'])
descending.temp.df <- df[descending.temp,]


