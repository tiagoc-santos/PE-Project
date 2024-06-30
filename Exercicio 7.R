library(stats4)

a <- 4.5
n <- 18
obs <- c(8.54,4.76,5.15,4.96,6.25,7.22,12.9,6.04,8.86,4.88,6.54,4.53,4.7,5.38,5.96,5.17,5.09,5.11)
p <- 0.25

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

theta <- (theta_mle@coef)
quantil_estimado <- 4.5/(0.75^(1/theta))

theta <- 3.4
quantil_verdadeiro <- 4.5/(0.75^(1/theta))

desvio_absoluto <- abs(quantil_estimado - quantil_verdadeiro)
round(desvio_absoluto, 4)


data <- c(8.54,4.76,5.15,4.96,6.25,7.22,12.9,6.04,8.86,4.88,6.54,4.53,4.7,5.38,5.96,5.17,5.09,5.11)
valor_inicial <- 3.4
p <- 0.25
theta <- 3.4
a <- 4.5

library(stats4)

soma_logdata <- sum(log(data))
n <- length(data)

fun <- function(theta) {
  res <- -n * log(theta) + (theta + 1) * soma_logdata - n * theta * log(a)
  return(res)
}

result <- mle(minuslog = fun, start = list(theta = valor_inicial))
est_theta <- as.vector(result@coef)

quantil <- function(p, theta) {
  res <- a * (1 - p)^(-1 / theta)
}

estimativa <- quantil(p, est_theta)
valor_exato <- quantil(p, theta)

solution <- abs(estimativa - valor_exato)
solution