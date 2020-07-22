library(dplyr)

df <- mtcars

result <- arrange(sample_n(filter(df, mpg > 20), size = 5), desc(mpg))



# pipe
# data %>% op1 %>% op2 %>% op3


result2 <- df %>% filter(mpg > 20) %>% sample_n(size = 5) %>% arrange(desc(mpg))