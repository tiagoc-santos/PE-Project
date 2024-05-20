set.seed(2822)

lambda_H0 <- 2.90
lambda_H1 <- 3.15
k <-3.234 
m <- 5000
n <- 100

test <- function(lambda, k){
  x <- rpois(n, lambda = lambda)
  mean(x) > k  
}

#Rejeita H0
dec_errada_tipo1 <- 0

#Rejeita H1
dec_errada_tipo0 <- 0

for(i in 1:m){
  dec_errada_tipo1 <- dec_errada_tipo1 + as.integer(test(lambda_H0, k))
  dec_errada_tipo0 <- dec_errada_tipo0 + as.integer(!test(lambda_H1, k))
}

freq_tipo1 <- dec_errada_tipo1 / m
freq_tipo2 <- dec_errada_tipo0 / m

quociente <- freq_tipo2 / freq_tipo1

round(quociente, 2)
