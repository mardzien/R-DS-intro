#factor()

animal <- c('d', 'c', 'd', 'c', 'c')
id <- c(1:5)
factor(animal)

fact.ani <- factor(animal)
ord.cat <- c('cold', 'medium', 'hot')
temps <- c('cold', 'medium', 'hot', 'hot', 'hot', 'cold', 'medium')

fact.temp <-factor(temps, ordered = T, levels = c('cold', 'medium', 'hot'))
