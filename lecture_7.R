calc = function(n, m, o) {
    if (o == '+') return(n + m)
    else if (o == '-') return(n - m)
    else if (o == '*') return(n * m)
    else if (o == '/') return (n / m)
    else print('wrong operator')
}

calc(1, 2, '+')

circle = function(r) {
    return(c(2 * pi * r, pi * r ** 2))
}

circle(3)

mat_func = function(a, b) {
    return(list(t(a), t(b), a %*% b))
}

mat_func(matrix(1:9, ncol=3, nrow=3), matrix(c(6, 7, 1, 2, 4, 5, 3, 8, 9), ncol=3, nrow=3))
