library(randomForest)
library(gbm)
library(tidyverse)

data = read.csv('./Lecture21_data/small_diamonds.csv')

data$cut = factor(data$cut, levels = c('Fair', 'Good', 'Very Good', 'Premium', 'Ideal'))
data$color = factor(data$color, levels = c('J', 'I', 'H', 'G', 'F', 'E', 'D'))
data$clarity = factor(data$clarity, levels = c('I1', 'SI2', 'SI1', 'VS2' ,'VS1', 'VVS2', 'VVS1', 'IF'))

plot(data)

lm.fit = lm(price ~ ., data = data)
summary(lm.fit)

step.lm.fit = step(lm.fit)
summary(step.lm.fit)

poly.fit = lm(price ~ poly(carat, 2, raw=TRUE) + ., data=data)
summary(poly.fit)
