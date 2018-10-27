#Creating ordinal data

#Creating factor data without order
(likscale = sample(c('Ex', 'Good', 'Sat', 'Poor'), size=20, replace=T))
summary(likscale)
class(likscale)
likscaleF = factor(likscale)
summary(likscaleF)
class(likscaleF)

#Making it ordinal
likscaleOF = factor(likscale, ordered = T, levels = c('Poor', 'Sat', 'Good', 'Ex'))
summary(likscaleOF)
class(likscaleOF)

#plotting
barplot(table(likscaleF), col=1:4)
barplot(table(likscaleOF), col=1:4)
