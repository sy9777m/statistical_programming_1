library(UsingR)

plot(babies$gestation, babies$age)
plot(babies$gestation, babies$smoke)
plot(babies$gestation, babies$wt)
plot(babies$gestation, babies$ht)

plot(babies$race, babies$gestation)
plot(babies$race, babies$drace)

x = seq(0.001, 10, 0.001)
plot(x, 1 / sqrt(2 * pi) * exp(-1 * (log(x))^2 / 2), type = 'l')
curve(1 / sqrt(2 * pi) * exp(-1 * (log(x))^2 / 2) * (1 + sin(2 * pi * log(x))), add=T)
