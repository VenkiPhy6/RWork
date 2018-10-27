#Parttioning data

#A First attempt
data_vec <- seq(1,1000, by =3)
data_vec
?sample
pos <- sample(length(data_vec), size=350, replace = T)
first_partition <- data_vec[pos]
second_partition <- data_vec[-pos]
first_partition
second_partition

#Class exercise
#Vector
studentname = paste('Student', 1:10000, sep='-')
studentname
pos <- sample(length(studentname), size = 60*length(studentname)/100)
group1 = studentname[pos]
group2 = studentname[-pos]
group1
group2

#Data frame
sname = paste('s', 1:1000, sep='-')
gender = sample(x=c('Male', 'Female'), size=1000, prob=c(.6,.4), replace=T)
marks = ceiling(rnorm(1000,60,10))
df = data.frame(sname, gender, marks)
head(df)
table(df$gender)
posit <- sample(x = dim(df)[1], size = dim(df)[1] * 70/100)
train = df[posit,]
test = df[-posit,]
dim(train)
dim(test)
dim(setdiff(test, train))
