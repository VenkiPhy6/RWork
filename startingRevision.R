#Practising starting code

#Assign
x1 = 3
x1
x2 <- 4
x2
(x3 = 6)

#Enivronment---

#datasets
data()
df1 = mtcars
women
data(women)
attach(women)
attach(mtcars)
mpg
height

#packages
library()

#variables
ls()

#cleaning up
rm(list=ls(all=TRUE))

#help
?rm
help(rm)

#Version
R.Version()
R.version
version

#Date
Sys.Date()

#Working directory
getwd()

#Info
class(mtcars)
methods(class="data.frame")

#Run all lines in a script
source('test1.R')
