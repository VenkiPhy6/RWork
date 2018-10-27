#First Logistic Regression attempt

#Creating and understanding our data----
input_Data <- read.csv('./data/binary.csv', sep=',')
head(input_Data)
summary(input_Data)
?sapply
sapply(input_Data, sd)
str(input_Data)
data_cp = input_Data

#Cleanup
data_cp$admit = factor(data_cp$admit)
data_cp$rank = factor(data_cp$rank)
str(data_cp)
summary(data_cp)

#Making sure there are no zero cells in the contingency table
?xtabs
xtabs(~admit+rank, data=data_cp)

#Create Logistic Model
?glm
mylogit <- glm(admit ~ gre + gpa + rank, data = data_cp, family='binomial')
summary(mylogit)
