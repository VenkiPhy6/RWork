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

#Creating the data frame
df1 = data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1)
df1[marks>50 & gender=='F', c('rollno', 'sname', 'gender', 'marks')]
names(df1)
dim(df1)
aggregate(marks ~ gender, data=df1, FUN = max)
aggregate(marks2 ~ gender, data=df1, FUN = max)

#Top 5 students' details
