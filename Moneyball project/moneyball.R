library(ggplot2)
library(dplyr)
# reading batting stat file
batting <- read.csv('Moneyball project/Batting.csv')

# creating batting avg column
batting$BA <- batting$H / batting$AB

# creating on base percentage column
batting$OBP <- (batting$H + batting$BB + batting$HBP) /
  (batting$AB + batting$BB + batting$HBP + batting$SF)

#calculating singles
batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR

# creating sluging average column
batting$SLG <- ((1 * batting$X1B) + (2 * batting$X2B) + (3 * batting$X3B) + (4 * batting$HR)) / batting$AB

# reading salary file
sal <- read.csv("Moneyball project/Salaries.csv")

# creating subset for batting stat
batting <- subset(batting, yearID >= 1985)

combined.data <- merge(batting, sal, by = c('playerID', 'yearID'))

lost.players <- subset(combined.data, playerID %in% c('giambja01', 'damonjo01', 'saenzol01'))

lost.players <- subset(lost.players, yearID == 2001)
lost.players <- lost.players[, c('playerID', 'H', 'X2B', 'X3B', 'HR', 'OBP', 'SLG', 'BA', 'AB')]

combined.data <- subset(combined.data, yearID == 2001)

# replacement players 
# 1469 ABP
# AVG 0.364 OBP
# 15 million




combined.data <- subset(combined.data, salary < 8000000 & OBP > 0)
combined.data <- subset(combined.data, AB >= 450)


ggplot(combined.data, aes(x = OBP, y = salary)) + geom_point(size = 2)


options <- head(arrange(combined.data, desc(OBP)), 10)

options <- options[, c('playerID', 'AB', 'salary', 'OBP')]


# heltoto01 berkmla01 gonzalu01 