#Analysing mtcars dataset using dplyr

#Understanding the data set-------
library(dplyr)
str(mtcars)
?mtcars
class(mtcars)
print(mtcars)
factor(mtcars$cyl)
factor(mtcars$vs)
factor(mtcars$am)
factor(mtcars$gear)
summary(mtcars)

#Class discussion----
table(mtcars$am)
t1 = table(mtcars$am)
?pie
pie(t1, labels = c('Auto', 'Manual'))
(t2 = table(mtcars$gear, dnn=c('no_gears')))
class(t2)
?table
methods(class = 'table')
pie(t2, labels = c('3 gears', '4 gears', '5 gears'))
?barplot
barplot(t2, col=1:3, horiz=T)
mtcars %>% select(mpg, gear)
mtcars %>% select(mpg, gear) %>% slice(c(1:5, 20))
mtcars %>% slice(sample(10))
mtcars %>% arrange(mpg)
mtcars %>% arrange(am, desc(mpg))
mtcars %>% mutate(rn = rownames(mtcars)) %>% select(rn, mpg)
mtcars %>% 

#Doing stuff from the cheatsheet---
#From summarise 
mtcars %>% group_by(vs) %>% summarise(number = n())
mtcars %>% summarise(avg = mean(mpg), quant2 = median(mpg), number= n(), unique=n_distinct(mpg), missing=sum(is.na(mpg)), first = first(mpg), last = last(mpg), twentieth=nth(mpg, 20), qua = quantile(1, mpg))#, minimum = min(mpg), maximum = max(mpg), inter-quant = IQR(mpg), mad = mad(mpg), std_dev = std(mpg), vari = var(mpg))

