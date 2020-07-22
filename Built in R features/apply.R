
v <- 1:10

addrand <- function(x){
  random.number <- sample(1:100, 1)
  return(x + random.number)
}


result <- lapply(v, addrand)


times2 <- function(x){
  return(x * 2)
}

result2 <- sapply(v, times2)


# Anonymous functions

v2 <- 1:5

result3 <- sapply(v2, function(num){num * 2})


# apply wiht multiple inputs

add_choice <- function(num, choice){
  return(num + choice)
}


result4 <- sapply(v2, add_choice, choice = 10)








