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


seed <- 1973
n <- 40
a <- 4
valor <- 126

set.seed(seed)
y <- vector(length = 1000)

for (i in 1:1000) {
  y[i] <- sum(rexp(n, rate = 1 / a))
}
sim <- sum(y > valor) / 1000

ext <- 1 - pgamma(valor, n, rate = 1 / a)

solution <- abs(sim - ext) * 100
solution