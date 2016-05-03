gdp <- read.csv("data/data-1952.csv")

gdp['gdp'] <- gdp$gdpPercap * gdp$pop

keep <- c('country', 'year', 'lifeExp', 'gdp')
gdp <- gdp[keep] #rewriting the gdp function#
write.csv(gdp, "gdpc.csv")
