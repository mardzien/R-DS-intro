today <- Sys.Date()
class(today)

c <- "1990-01-01"
class(c)

my.date <- as.Date(c)
class(my.date)

my.date2 <- as.Date("Nov-03-90", format = "%b-%d-%y")