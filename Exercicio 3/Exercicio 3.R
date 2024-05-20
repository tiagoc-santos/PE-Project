library(ggplot2)
library(readxl)

theme_set(theme_light())

dados <- read_excel("electricity.xlsx", col_types = "text")
countries <- c("IEA Total", "Latvia","Italy")

dados <- subset(dados, COUNTRY %in% countries & YEAR >= 2015 & PRODUCT == "Renewables")
dados$share <- as.numeric(dados$share) * 100
dados$TIME <- as.Date(paste0("01-", dados$MONTH, "-",dados$YEAR), format = "%d-%m-%Y")

ggplot(dados) +
  geom_line(aes(x = TIME, y =share , color = COUNTRY))+
  geom_point(aes(x = TIME, y = share, color = COUNTRY)) +
  scale_x_date(date_labels = "%b %Y") +
  scale_y_continuous(limits = c(0,100)) +
  labs(title = "Monthly evolution of the proportion of electricity produced from renewable sources", 
       x = "Time", y = "Share of renewable energy (%)")