stats_func = function(v) {
    return(c(min(v), max(v), mean(v), median(v), var(v), sd(v)))
}

stats_func(c(1:10))

geom_seq = function(a, r, n) {
    for (i in 1:n) {
        print(a)
        a = a * r
    }
}

geom_seq(2, 2, 10)

fibonacci1 = function(n) {
    if (n <= 0) {
        warning("n must be a positive integer")
    } else if (n == 1) {
        return(list(value = n, position = n))
    }
    
    i = 2
    prev = 1
    current = 1
    v = 0
    while (v < n) {
        v = prev + current
        prev = current
        current = v
        i = i + 1
    }
    
    return(list(value = v, position = i))
}

random_unif = function(min_num, max_num, n) {
    x = runif(n, min_num, max_num)
    mean_num = mean(x)
    sd_num = sd(x) / sqrt(n)
    return(punif(mean_num + 1.96 * sd_num, min=min_num, max=max_num) <= 0.95)
}

random_unif(0, 5, 100)

alphabet = function() {
    answer = sample(c('L', 'E', 'T', 'T', 'E', 'R', 'S'), 1)
    res = sample(c('l', 'e', 't', 't', 'e', 'r', 's'))
    grep(tolower(answer), res)
}

set.seed(231004)
iter = NULL
for (i in 1:1000) {
    iter = c(iter, alphabet())
}
mean(iter)

game1 = function(n, p) {
    winner = 0
    loser = 0
    for (i in 1:n) {
        coin = sample(c('H', 'T'), 1, prob=c(p, 1 - p))
        if (coin == 'H') {
            winner = winner + 3
            loser = loser - 1
        } else {
            loser = loser + 2
        }
    }
    return(c(winner, loser))
}

game1(100, 0.4)

game2 = function(m, n, p) {
    player = sample(1:m, 2)
    winner = 0
    loser = 0
    other = 0
    for (i in 1:n) {
        coin = sample(c('H', 'T'), 1, prob=c(p, 1 - p))
        if (coin == 'H') {
            winner = winner + 5
            loser = loser - 2
        } else {
            loser = loser + 3
        }
        other = other + 1
    }
    
    return(list(player, winner, loser, other))
}

game2(10, 100, 0.4)
