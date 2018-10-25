#assign
x1 = 3
x2 <- 3
#print
x1
x2
#Assign and print
(x3=3)
(x4<-4)
#Variables
ls()
#datasets available for use
data()
women
data(women)
?women
?mtcars
mtcars$mpg
attach(mtcars)
mpg
#libraries available for use
library()
#elements
ls()
rm(list=ls())
rm(list=ls(all = TRUE))
#help
?mean
x = c(0:10, 50)
x
xm = mean(x)
xm
c(xm, mean(x, trim = 0.1))
help(mean)

#Create values
1:100
seq(1,101,by=2)
seq(1,10,length.out=5)
y = c(0:10, 50:100)
y
rep(1,5)
rep(c(1,4), times=4)
rep(c(1,4), each=4)
rep(c(1,4), times=c(2,6))
#version of R
version
#Dare
Sys.Date()
#working directory
getwd()
#methods available for a class of object
methods(class = 'matrix')
#command to plot
plot(1:10)
#Clean console by Ctrl+L
#Run all the commands in the script
source("test1.R")