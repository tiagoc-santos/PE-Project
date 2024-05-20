library(stats4)
library(gbutils)
a <- 4.5
n <- 18
obs <- c(8.54,4.76,5.15,4.96,6.25,7.22,12.9,6.04,8.86,4.88,6.54,4.53,4.7,5.38,5.96,5.17,5.09,5.11)

fdp <- function(x, theta){
  return(theta * x ^(-theta -1) * 4.5^theta)
}

nll <- function(theta){
  sum <- 0
  for(i in obs){
    sum <- sum + log(fdp(i,theta))
  }
  return(-sum)
}

theta_mle <- mle(nll, start = list(theta = 3.4))

cdf <- function(x){
  theta <- as.numeric(theta_mle@coef)
  res <- (4.5/x)^theta
  return(-res)
}


