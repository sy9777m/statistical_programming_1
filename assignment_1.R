fibonacci = function(n) {
    if (n <= 0) {
        stop("n must be a positive integer")
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

fibonacci2 = function(m) {
    if (length(m) > 1) {
        result = list()
        for (n in m) {
            result[[length(result) + 1]] = fibonacci(n)
        }
        return(result)
    } else {
        return(fibonacci(m))
    }
}

fibonacci3 = function() {
    golden_ratio = (1 + sqrt(5)) / 2
    
    i = 2
    while (TRUE) {
        prev = fibonacci(i - 1)
        current = fibonacci(i)
        
        if (prev$position == current$position) next
        
        cat(current$value)
        
        if (((current$value / prev$value) - golden_ratio) < 1e-5) break
        
        i = i + 1
    }
}
