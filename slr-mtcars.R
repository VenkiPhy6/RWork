names(mtcars)
fit2 = lm(mpg ~ wt, data = mtcars)
summary(fit2)

new4 = data.frame(wt=c(2, 3))
p4 = predict(fit2, newdata = new4)
cbind(new4, p4)
plot(fit2)

new5 = data.frame(wt=c(4, 5))
p5 = predict(fit2, newdata = new5)
cbind(new5, p5)
plot(fit2)
