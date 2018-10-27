#Purchase prediction

#Creating & studying the dataset----
url="https://docs.google.com/spreadsheets/d/1Md_ro2t3M7nA9JMH1DsE12jfeX7qq-UPw6p8WQd6A2Y/edit#gid=120271978"
library(gsheet)
df2 = as.data.frame(gsheet2tbl(url))
str(df2)
attributes(df2)
head(df2)
table(df2$purchased)
View(df2)

#Copying the data, cleaning and partitioning it for analysis----
dataset = df2

dataset$purchased = factor(dataset$purchased)
dataset$gender = factor(dataset$gender)
library(caret)
partition = createDataPartition(dataset$purchased, times=1, p = 0.7)
trainset = dataset[partition$Resample1, ]
testset = dataset[-partition$Resample1, ]

#Stduying the partitions
dim(setdiff(trainset, testset))
dim(trainset)
dim(testset)
prop.table(table(trainset$purchased))
prop.table(table(testset$purchased))

#Logistic model----
str(trainset)
names(trainset)
?glm
logitmod1 = glm(purchased ~ gender + age + salary, family=binomial, data=trainset)
summary(logitmod1)
#gender is unnecessary
logitmod2 = glm(purchased ~ age + salary, family=binomial, data=trainset)
summary(logitmod2)

#predict on sample data
testset2 = data.frame(age=c(40,65), gender=c('Male', 'Female'), salary=c(40000, 50000))
testset2
(probpred2 = predict(logitmod2, type = 'response', newdata = testset2))
cbind(testset2, probpred2)
#age=65 person likely to purchase

# Predicting the Test set results from testset
head(testset)
str(testset)
prob_pred = predict(logitmod2, type = 'response', newdata = testset)
summary(prob_pred)
head(cbind(testset,prob_pred ),10)

#if prob > 0.5 make it 1, else 0
y_pred = ifelse(prob_pred > 0.5, 1, 0)
summary(testset$purchased)
head(cbind(testset, y_pred),100)

# Making the Confusion Matrix
cm = table(testset[,5], y_pred)
cm
(accuracy = (75 + 22)/ sum(cm))

library(caret)
confusionMatrix(cm)

names(dataset)
