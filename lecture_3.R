A = 234
int = 234
dou = 5.473
cha = 'Apple'
logical = TRUE
0/0

as.numeric('Apple')
as.numeric('1234')
as.numeric(TRUE)
as.numeric(FALSE)

a = c(1, 2, 4, 10)
b = c(1, 2, "Apple")
c = c(1, 2, TRUE, FALSE)

1:10
seq(1, 10)
seq(1, 10, 3)
seq(1, 10, length=4)

rep(7, 3)
rep(c(4, 6, 2), 3)
rep(c(4, 6, 2), c(4, 2, 3))

table(c(1, 2, 3, 5, 3, 2, 6, 2, 6, 1))
append(a, b)
c(a, b)

x = c(1, 3, 5, 7)
y = c(3, 5)
union(x, y)
setdiff(x, y)
intersect(x, y)

a = c(1, 2, 4, 10)
matrix(a)
b = c(1, 2, 'Apple', TRUE)
matrix(b)

mat_a = matrix(a, ncol=2, nrow=2)
mat_a
matrix(a, ncol=2, nrow=2, byrow=T)

mat_a[2]
mat_a[2,]
mat_a[,2]
mat_a[2, 2]

mat_a = matrix(1:4, nrow=2, ncol=2)
mat_b = matrix(5:8, nrow=2, ncol=2)
mat_a
mat_b

cbind(mat_a, mat_b)
rbind(mat_a, mat_b)

mat_a * mat_b
mat_a %*% mat_b

a = c(1, 2, 4, 10)
b = c(1, 2, 'Apple', TRUE)

dat = data.frame(a, b)
dat

height = data.frame(id=c(1, 2, 3), h=c(180, 175, 155))
weight = data.frame(id=c(1, 2), w=c(80, 75))
merge(height, weight, by.x='id', by.y='id')
merge(height, weight, by.x='id', by.y='id', all=T)

a = list(vec=c(1:4), mat=matrix(1:9, ncol=3, nrow=3), df=height, weight)
a

a = list(vec1=1:4, vec2=seq(1, 11, 2))
a
unlist(a)

b = list(mat_a, mat_b)
Reduce(cbind, b)

arr = array(c(1:24), c(4, 2, 3))
arr
