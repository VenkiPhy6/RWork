#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
#install.packages('olsrr')
library(olsrr)
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
?ols_step_all_possible
summary(model)
k <- ols_step_all_possible(model)
k
plot(k)
k
#summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp+ qsec, data=mtcars))
