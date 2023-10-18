score = c(85, 60)
ifelse(score >= 80, "우수",
       ifelse(score >= 70, "보통", "노력"))

switch("name", id="hong", pwd='1234', age=105, name='홍길동')
x = 5
y = 7
switch('plus', plus=x + y, minus = x - y)

name = c('kim', 'lee', 'choi', 'park')
which(name == 'choi')

for(i in 101:200) {
    if (i %% 3 == 0 && i %% 4 == 0) print(i)
}

factorial = 1
for (i in 1:10) {
    factorial = factorial * i
}
factorial

fibonnaci = function(n) {
    if (n == 1 || n == 2) return(1)
    else return(fibonnaci(n - 2) + fibonnaci(n - 1))
}

for (i in 1:40) {
    print(fibonnaci(i))
}

library(dplyr)

names(iris)
iris %>% mutate(total.length=(Sepal.Length + Petal.Length) / 2) %>%
    mutate(total.width = (Sepal.Width + Petal.Width) / 2) %>% 
    summarise(average.length=mean(total.length), average.width=mean(total.width))

for (s in unique(iris$Species)) {
    print(iris %>% filter(Species == s) %>% 
        summarise(average.sepal.length=mean(Sepal.Length), average.sepal.width=mean(Sepal.Width),
                  average.petal.length=mean(Petal.Length), average.petal.width=mean(Petal.Width)))
}
