library(ggplot2)
theme_set(theme_light())

url <- 'https://web.tecnico.ulisboa.pt/~paulo.soares/pe/projeto/Paises_PIB_ICH.csv'
dados <- read.csv(url, check.names =FALSE)
continentes <- c("Africa", "Asia")
special_countries <- c("United Arab Emirates", "Nepal", "Comoros", "Namibia")

dados |>
  subset(Continent %in% continentes) |>
  ggplot() +
  geom_point(aes(`GDP`, `HCI`, color = Continent), shape = 18, size = 3.2) +
  geom_text(aes(`GDP`, `HCI`, label=ifelse(Country %in% special_countries ,Country,''))) + 
  scale_x_log10() +
  labs(title = "GDP per capita vs Human Capital Index ",
       x = "GDP per capita (2023)",
       y = "Human Capital Index (2020)")
  
