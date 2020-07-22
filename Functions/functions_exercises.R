# Ex 1: Create a function that will return the product of two integers.

prod <- function(num1, num2){
  return(num1 * num2)
}


# Ex 2: Create a function that accepts two arguments, an integer and a vector of
# integers. It returns TRUE if the integer is present in the vector, otherwise it
# returns FALSE. Make sure you pay careful attention to your placement of the
# return(FALSE) line in your function!

num_check <- function(num, vec){
  for (number in vec) {
    if(num == number){
      return(T)
    }
  }
  return(F)
}


# Ex 3: Create a function that accepts two arguments, an integer and a vector of
#integers. It returns the count of the number of occurences of the integer in
# the input vector.

num_count <- function(num, vec){
  counter <- 0
  for (number in vec) {
    if (number == num) {
      counter <- counter + 1
    }
  }
  return(counter)
}


# Ex 4: We want to ship bars of aluminum. We will create a function that accepts 
# an integer representing the requested kilograms of aluminum for the package to 
# be shipped. To fullfill these order, we have small bars (1 kilogram each) 
# and big bars (5 kilograms each). Return the least number of bars needed.
# 
# For example, a load of 6 kg requires a minimum of two bars 
# (1 5kg bars and 1 1kg bars). A load of 17 kg requires a minimum of 5 bars 
# (3 5kg bars and 2 1kg bars).

bar_count <- function(number){
  counter <- 0
  small <- number %% 5
  big <- (number - small)/ 5
  counter <- small + big
  
  return(counter)
}


# Ex 5: Create a function that accepts 3 integer values and returns their sum. 
# However, if an integer value is evenly divisible by 3, then it does not count
# towards the sum. Return zero if all numbers are evenly divisible by 3.
# Hint: You may want to use the append() function.

summer <- function(a, b, c){
  
  result <- c(0)
  
  if(a %% 3 != 0){
    result <- append(a, result)
  }
  if(b %% 3 != 0){
    result <- append(b, result)
  }
  if(c %% 3 != 0){
    result <- append(c, result)
  }
  return(sum(result))
}


# Ex 6: Create a function that will return TRUE if an input integer is prime. 
# Otherwise, return FALSE. You may want to look into the any() function. 
# There are many possible solutions to this problem.

prime_check <- function(number){
  if(number == 2){
    return(T)
  }

  
  for (i in 2:(number - 1)) {
    if(number %% i == 0){
      return(F)
    }
  }
  return(T)
}
