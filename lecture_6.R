data = read.table('./Lecture6_data/Lec6-1.score.txt', header=T)
for (i in 1:nrow(data)) {
    print(mean(as.numeric(data[i, -c(1, 2)])))
}

apply(data[, -c(1, 2)], 1, mean)

tapply(data$Korean, data$Sex, mean)

dat = list(class1 = read.table("./Lecture6_data/Lec6-1.score.txt", header=T),
           class2 = read.table("./Lecture6_data/Lec6-2.score.txt", header=T))
str(dat)
lapply(1:2, function(class) {
        tapply(dat[[class]]$Korean, dat[[class]]$Sex, mean)
    }
)
