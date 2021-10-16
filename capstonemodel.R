install.packages("dslabs")
library(dslabs)
library(tidyverse)
data("movielens")

class(movielens)
movielens %>% as.tibble()
str(movielens)
# to run lm movieid which is an integer needs to be change to a factor
# recommendation system steps
# convert data set into the right data type e.g. integer type to factor movie id
# to factor
# step 1 run basic model - average of all ratings
# identify the variation in potential effects Univariate stats (ratings by movieid)
  # ratings by userid, genres (more movies > genres)
# step 2 add bias/effects on to basic model
  # 2.1 - movie effects (each movie id gets an average)
    # check residuals -> inspect the movie and users with large residuals
  # 2.2 - uesr effects (each user id gets an average)
  # 2.3 - genre effect
    #2.3.1 & 2.3.2 - all factors or reduce check teh box plot variation
# step 3 - regularization - penalising large estimates based on small sample size
  # regularization - introduced a penalty term that has low sample size, tune penalty term
  # cross validation of tuning parameter
# show improvement in RMSE in a table using various models
# step 4 - matrix factorization
# i