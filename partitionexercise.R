<<<<<<< HEAD
#Partitioning data class exercise

#Vector-----
studentname = paste('Student', 1:10000, sep='-')
studentname
pos <- sample(length(studentname), size = length(studentname)*60/100)
=======
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
studentname = paste('Student', 1:10000, sep='-')
studentname
pos <- sample(length(studentname), size = 60*length(studentname)/100)
>>>>>>> ecd071083a9ac2b063c211d8ccd392bd1562cd02
group1 = studentname[pos]
group2 = studentname[-pos]
group1
group2
<<<<<<< HEAD
length(setdiff(group2, group1))

#Data frame----
#Creating
sname = paste('s', 1:1000, sep='-')
gender = sample(x=c('Male', 'Female'), size=1000, prob=c(.6,.4), replace=T)
marks = ceiling(rnorm(1000,60,10))
df = data.frame(sname, gender, marks)
head(df)
table(df$gender)

#Partioning
posit <- sample(x = dim(df)[1], size = dim(df)[1] * 70/100)
train = df[posit,]
test = df[-posit,]
dim(train)
dim(test)
dim(setdiff(test, train))

#Using caret----
#Learning to use createDataPartition
(data(oil))
fattyAcids
length(oilType)
?createDataPartition
oil_data = createDataPartition(oilType, times = 2, list=T)
oil_data
dim(fattyAcids[oil_data$Resample1, ])
dim(fattyAcids[oil_data$Resample2, ])
dim(fattyAcids)
dim(setdiff(fattyAcids[oil_data$Resample1, ], fattyAcids[oil_data$Resample2, ]))

#Trying for our student data
gender_train = createDataPartition(df$gender, times=1, p=0.7)
gender_train
train2 = df[gender_train$Resample1, ]
test2 = df[-gender_train$Resample1, ]
dim(train2)
dim(test2)
dim(setdiff(train2, test2))

#Comparing partitions from the two methods----
prop.table(table(train2$gender))
prop.table(table(test2$gender))
prop.table(table(train$gender))
prop.table(table(test$gender))

#THE BIG INTERESTING POINT - EVEN WITHOUT USING CARET PACKAGE I AM ENDING UP WITH SAME PROPORTION OF MALE AND FEMALES IN MY TRAIN AND TEST SETS. HOW IS THIS POSSIBLE?! 
=======
>>>>>>> ecd071083a9ac2b063c211d8ccd392bd1562cd02
