#Generate 500 heads and tails
data <- sample(c("Heads","Tails"),500,replace=TRUE)

#Calculate the proportion of heads
mean(data=="Heads")

#This line should give an error - it didn't work!
data <- sample(c("Heads","Tails"),500,replace=BLUE)

#This line should give a warning
#It did SOMETHING but maybe not what you want
mean(data)

#This line won't give an error or a warning
#But it's not what we want!
mean(data=="heads")

#Random code from prof to run
data(mtcars)
mean(mtcars$mpg)
mean(mtcars$wt)
372+565
log(exp(1))
2^9
(1+1)^9


help(mean)
help(mtcars)

# objects
a <- 1
a <- a + 1
a
my_vector <- c(1, 8, 2, 4, 3)
my_vector[c(TRUE, FALSE, TRUE, TRUE, FALSE)]
data.frame(a = c(1, 5, 3, 2), b = c('a', 'd', 'b', 'f'))
mtcars$cyl[1:5]
mtcars[['cyl']][1:5]
mean(mtcars$cyl)

# dplyr verbs
library(dplyr)

# pull - returns a vector
mtcars$cyl
pull(mtcars, cyl)
pull(mtcars, 'cyl')
pull(mtcars, 2)

# filter (chooses rows)
filter(mtcars, cyl == 4 & am == 1)

# pipe
mean(mtcars[mtcars$am == 1,]$cyl, na.rm = TRUE)
mtcars %>% 
  filter(am == 1) %>% 
  pull(cyl) %>% 
  mean(na.rm = TRUE)

# select (chooses columns). returns DF with fewer columns rather than vector
mtcars %>% 
  select(mpg, cyl) %>% 
  summary()

# mutate - creates new columns using the old ones
mtcars <- mtcars %>% 
  mutate(high_mpg = mpg > median(mpg))
mtcars %>% 
  pull(high_mpg) %>% 
  table()

# swirl practice
library(swirl)
swirl(econometrics)
install_course_github('NickCH-K','Econometrics')
swirl()

my_first_vector <- c(1,6,5,2,3)
