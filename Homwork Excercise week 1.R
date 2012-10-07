# Statistics One, Excerise 01, 05/09/2012
#reading data, plot histograms for all variables
#Provides descriptive statistics for all variables. 
library(psych)
ratings <- read.table ("stats1_ex01.txt", header=T)
layout(matrix(c(1,1,2,3),2,2,byrow=T))
hist(ratings$WoopWoop, xlab= "Ratings")
hist(ratings$RedTruck, xlab= "Ratings")
hist(ratings$HobNob, xlab= "Ratings")
hist(ratings$FourPlay, xlab= "Ratings")
describe(ratings)