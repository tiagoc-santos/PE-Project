library(ggplot2)
theme_set(theme_light())

url <- "https://web.tecnico.ulisboa.pt/~paulo.soares/pe/projeto/master.csv"
data <- read.csv(url)
target_age <- "55-74 years"
target_year <- 2002
data <- subset(data, year == target_year & age == target_age)

data |>
  ggplot() +
  geom_boxplot(aes(sex, suicides.100k.pop)) +
  labs(title = "Suicides per 100K population (Men vs Women)", y = "Suicides per 100K population")
     