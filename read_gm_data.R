gdp <- read.csv("data/data-1952.csv")
new <- read.csv("data/data-1957.csv")
gdp <- rbind(gdp, new) #pipes these together#

#Calculating GDP
gdp['gdp'] <- gdp$gdpPercap * gdp$pop

keep <- c('country', 'year', 'lifeExp', 'gdp')
gdp <- gdp[keep] #rewriting the gdp function#
write.csv(gdp, "gdpc.csv")
