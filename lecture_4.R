num = scan()
num
num = edit(num)
num

name = scan(what=character())
name

student = read.table('./Lecture4_data/lec4-0.student.txt')
student
names(student) = c('번호', '이름', '키', '몸무게')
student

student1 = read.table('./Lecture4_data/lec4-1.student1.txt', header=T, fileEncoding = 'euc-kr')
student1
