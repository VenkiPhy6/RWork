library(rpart)
library(rpart.plot)

gender = sample(c('M', 'F'), size=10000, prob=c(.6,.4), replace=T)
buy = sample(c('Y', 'N'), size=10000, prob=c(.5,.5), replace=T)
age = ceiling(rnorm(10000,35,5))
df = data.frame(buy, age, gender)
head(df)

?rpart()
dtree1 = rpart(buy~gender+age, data=df, minsplit=10, minbucket=4, cp=.006)
dtree1
dtree1$variable.importance
rpart.plot(dtree1)