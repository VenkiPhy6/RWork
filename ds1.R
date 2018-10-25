#Data Structures in slides
x = 1:10
x
x1 <- 1:20
x1

(x1=1:30)
class(x1)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a', "Dhiraj", "4"))
class(x3b)

(x4=c(T, FALSE, TRUE, T, F))
class(x4)

x5=c(3L,5L)
class(x5)
x5a=c(3,5)
class(x5a)
(x5b=c(1, 'a', T, 4L))
class(x5b)

#access elements
(x6=seq(0,100,3))
length(x6)
x6[20]
x6[3]
x6[seq(1, length(x6), 2)]
x6[c(2,4)]
x6[-1]
x6[-c(1:10, 15:20)]
x6[c(2,-4)]
?rev
rev(x6)
x6[c(2.6,3.9)]
x6[-c(1,5,20)]
x6
x6[length(x6)-1]
(x7=c(x6,x2))

#sorting
set.seed(1234)
(x6 = sample(1:20))
?sample
sort(x6)
sort(x6[-c(1,2)])
sort(x6, decreasing=T)
x6
rev(x6)

#Operations


#modify
(x = -3:2)
x[2]
x[2] = 2; x
x<0
x[x<=1 & x>=-1] = 100 
x
x=c(5,6,NULL)
x
length(x)

#matrix
100:111
(m1 = matrix(100:111, nrow = 4))
(m2 = matrix(100:111, ncol = 3))
x = 101:124
length(x)
matrix(x, ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1
m1[1,]
m1[,1]
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]
m1

colnames(m1) = paste('c',1:3,sep='')

addmargins(m1,1,sd)
rbind(m1, colSums(m1))
colnames(m1) = paste('c',1:3,sep='')
m1

#DataFrame
#Creating vectors
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M', "F"), size=30, replace=T, prob=c(.7,.3)))
table(gender)
prop.table(table(gender))
(marks = floor(rnorm(30, mean=50, sd=10)))
(marks2 = ceiling(rnorm(30,4,5)))
floor(5)
ceiling(6)
trunc(9.3979)
trunc(c(55.89,93.21))
round(9.678, 2)
signif(8.4567, 2)
(course = sample(c('BBA', 'MBA', 'BTECH'), size=30, replace=T, prob = c(.5,.4,.1)))

df1 = data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1)
head(df1)
class(df1)
summary(df1)
#digression
x = rnorm(100, mean=60, sd=10)
(quantile(x))
(quantile(x, seq(0,1,.1)))
(quantile(x, seq(0,1,.01)))
fivenum(x)  
boxplot(x)
(abline(h=fivenum(x)))
hist(x)
#Back
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)
data()
