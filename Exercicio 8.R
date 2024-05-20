library(pracma)
set.seed(1820)
n <- 8
gamma <- 0.95
amostra <- c(34.0,39.5,33.2,38.1,29.9,37.4,32.1,36.5,31.4,34.1,33.1,31.5,33.9,33.9)

amostra_aleatoria <- sample(amostra, size = n, replace = FALSE)

media <- mean(amostra_aleatoria)
variancia <- var(amostra_aleatoria)


a <- qchisq((1-gamma)/2, df = n -1)
b <- qchisq((1+gamma)/2, df = n - 1)

lower1 <- ((n-1)* variancia)/b
upper1 <- ((n-1)* variancia)/a

amp1 <- upper1 - lower1

f <- function(x) {
  c <- x[1]
  d <- x[2]
  p1 <- pchisq(d, df = n - 1) - pchisq(c, df = n - 1) - 0.95
  p2 <- dchisq(d, df = n + 3) - dchisq(c, df = n + 3)
  return(c(p1, p2))
}
x0 <- c(a, b)

cd <- fsolve(f, x0)

cd <- cd[1][[1]]

c <- cd[1]
d <- cd[2]

lower2 <- ((n-1)* variancia)/d
upper2 <- ((n-1)* variancia)/c

amp2 <- upper2 - lower2

round(amp1-amp2, 3)