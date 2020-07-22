
# create sequences with step
print(seq(0,100, by = 10))


vec <- c(1, 19, 13, 11, 3, 7, 4, 9)
# sort() - Sort a vector
print(sort(vec))
print(sort(vec, decreasing = T))
print(sort(c("A", "d", "w", "b", "D")))
# rev() - reverse elements in object
print(rev(vec))

# str() - show the structure of the object

print(str(mtcars))

# append() - merge objects together

v1 <- 1:10
v2 <- 31: 40

print(append(v1, v2))

# checkin data type
# is.

print(is.vector(v1))
print(is.data.frame(v1))
print(is.data.frame(mtcars))

