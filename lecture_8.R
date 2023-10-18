set.seed(230927)
runif(10)
runif(10, 5, 10)

punif(0.3, min=0, max=2)
punif(0.3, min=0, max=2, lower.tail = F)

cards = c(2:10, 'K', 'Q', 'J', 'A')
sample(cards, 5)

table(sample(c('H', 'T'), 1000, replace = T, prob=c(0.3, 0.7)))

game = function(n, p) {
    score = 0
    for (i in 1:n) {
        coin = sample(c('H', 'T'), 1, prob=c(p, 1 - p))
        
        if (coin == 'H') {
            score = score + sample(1:6, 1)
        } else {
            score = score - sample(1:6, 1)
        }
    }
    return(score)
}
game(100, 0.3)
