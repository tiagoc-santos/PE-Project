set.seed(1973)
n <- 40
a <- 4

num_simulations <- 1000
lambda <- 1/a

#Abordagem 1

Y_simulated <- numeric(num_simulations)

for (i in 1:num_simulations) {
  samples <- rexp(n, rate = lambda)
  Y_simulated[i] <- sum(samples)
}

proportion <- length(subset(Y_simulated, Y_simulated > 126))/ length(Y_simulated)

#Abordagem 2

prob_exata <- 1- pgamma(126, 40, rate = 1/4)

difference <- abs(proportion - prob_exata) * 100
round(difference, 4)
