# Statistics One, Assignment 01, 05/09/2012
#reading data, plot histograms for all variables
#Provides descriptive statistics for all variables. 
library(psych)
#inport data 
ratings<- read.table ("DAA.01.txt", header=T)
#split data to DES and AER for easy calculation
split_data <- split(ratings, ratings$cond, drop= F)
#creat a blank page
layout(matrix(c(1,2,3,4,5,6,7,8),2,4,byrow=T))
#creat 8 histogram
hist(split_data$des$pre.wm.s, xlab= "Ratings")
hist(split_data$des$post.wm.s,xlab= "Ratings")
hist(split_data$des$pre.wm.v,xlab= "Ratings")
hist(split_data$des$post.wm.v,xlab= "Ratings")
hist(split_data$aer$pre.wm.s,xlab= "Ratings")
hist(split_data$aer$post.wm.s,xlab= "Ratings")
hist(split_data$aer$pre.wm.v,xlab= "Ratings")
hist(split_data$aer$pre.wm.v,xlab= "Ratings")
#calculate the variance before training
PREWMS <- split(ratings$pre.wm.s,ratings$cond,drop=F)
print(var(PREWMS$aer))
print(var(PREWMS$des))
PREWMV <- split(ratings$pre.wm.v,ratings$cond,drop=F)
print(var(PREWMV$aer))
print(var(PREWMV$des))
