library(dplyr)
library(nycflights13)

# filter() and slice()

flights.september.02.AA <- filter(flights, month == 09, day == 02, carrier == "AA")

slice(flights, 1:10)

# arrange() - sorting by columns

flights.sorted <- arrange(flights, year, month, day, arr_time)

flights.descending <- arrange(flights, year, month, day, desc(arr_time))


# select()

flights.selected.carrier <- select(flights, carrier, arr_time)

flights.renamed <- rename(flights, airline_carrier = carrier)


# distinct()

distinct(select(flights, carrier))


# mutate() - adding new cols based on old columns

mutate(flights, new_col = arr_delay-dep_delay)
transmute(flights, new_col = arr_delay-dep_delay)



# summarise()

summarise(flights, avg_air_time = mean(air_time, na.rm = T))

summarise(flights, total_time = sum(air_time, na.rm = T))


# sample_n(), samlpe_frac()

sample_n(flights, 20)
