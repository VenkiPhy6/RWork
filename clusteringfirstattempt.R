marks1 = ceiling(sample(rnorm(10, 60, 10)))
marks2 = ceiling(sample(rnorm(10, 50, 12)))
df = data.frame(marks1, marks2)
library(amap)
?kmeans
km = kmeans(df, centers=2)
km$cluster
df2 = cbind(df, cluster = km$cluster)
df2
df2[order(df2$cluster), ]
plot()
#Incomplete