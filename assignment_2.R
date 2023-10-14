library(ISLR2)
library(tidyverse)
library(boot)

set.seed(1)
x = rnorm(100)
y = x - 2 * x^2 + rnorm(100)

plot(x, y)

xy = data.frame(x, y)

set.seed(7)

glm.fit1 = glm(y ~ x, data=xy)
cv.err1 = cv.glm(xy, glm.fit1)
cv.err1$delta

glm.fit2 = glm(y ~ poly(x, 2), data=xy)
cv.err2 = cv.glm(xy, glm.fit2)
cv.err2$delta

glm.fit3 = glm(y ~ poly(x, 3), data=xy)
cv.err3 = cv.glm(xy, glm.fit3)
cv.err3$delta

glm.fit4 = glm(y ~ poly(x, 4), data=xy)
cv.err4 = cv.glm(xy, glm.fit4)
cv.err4$delta

summary(glm.fit2)
summary(glm.fit3)

