#Parttioning data

#A First attempt
data_vec <- seq(1,1000, by =3)
data_vec
?sample
pos <- sample(length(data_vec), size=350, replace = T)
first_partition <- data_vec[pos]
second_partition <- data_vec[-pos]
first_partition
second_partition

#Class exercise
studentname = paste('Student', 1:10000, sep='-')
studentname
pos <- sample(length(studentname), size = 60*length(studentname)/100)
group1 = studentname[pos]
group2 = studentname[-pos]
group1
group2
