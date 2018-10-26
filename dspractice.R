#Vectors--------

#Creating vectors
x1 <- c(1,3,5,6)
x1
typeof(x1)
class(x1)
x2 <- c(1L,3L,5L,6L) #Forcing integer
x2
typeof(x2)
class(x2)
x3 <- c(1L, 3) 
x3
typeof(x3)
class(x3)
x4 <- c(1, 'five') #Can't have different data types.
x4
typeof(x4)
class(x4)

x5 <- c(1:100, x1) #Using slicing notation
x5
x6 <- c(2:-2, x2)
x6
typeof(x6)

?seq #Using seq
seq(1,5, .1)
seq(1, 5, length.out=10)

#Accessing vectors
(x7 = seq(1,10, by=0.2))
length(x7)
x7[40]
x7[-40]
x7[21]
x7[-21]
x7[c(-1,-3)]
x7[c(-1,3)]
x7[c(1.9,2.8)]
x7[2:9]
rev(x7)
rev(x7)[9]
rev(x7)[seq(1,length(rev(x7)),2)]

#Modifying
(x8 = -3:2)
x8[2] <- 100
x8
x8[x8<0] <- 5
x8
x8 = x8[1:4]
x8
x8 = NULL #Deleting
x8

#Matrix---------
(m1 = matrix(1:12, nrow=4))
(m2 = matrix(1:12, nrow=4, byrow=T)) #Forcing rowwise arrangement
class(m1)
attributes(m1)
dim(m1)
attributes(mtcars)
names(mtcars)
row.names(mtcars)

#Vector to Matrix
x9 = c(1:12)
dim(x9) <- c(2,6)
x9

#Accessing matrix elements
m2
m2[1,]
m2[,1]
m2[c(1,3,4),]
m2[,2:3]
m2[,]
m2[-2,]
