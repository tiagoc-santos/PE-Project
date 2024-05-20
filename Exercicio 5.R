set.seed(1950)

n <- 23
r <- 300
m <- 170  


generate_T_sample <- function() {
  Z <- rnorm(n + 1)  
  T <- sqrt(n) * (Z[1] / sqrt(sum(Z[-1]^2)))
  return(T)
}


proportions <- numeric(r)
for (i in 1:r) {
  sample_T <- replicate(m, generate_T_sample())
  less_or_equal <- subset(sample_T, sample_T <= 1.5)
  proportions[i] <- length(less_or_equal)/length(sample_T)
}


mean_proportion <- mean(proportions)


direct_prob <- pt(1.5, df = n)
difference <- abs(mean_proportion - direct_prob) * 100
result <- round(difference * 100, 5) 
result
