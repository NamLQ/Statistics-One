#Statistics One Assigment Week 2
#descriptive statistics and correlation matrix
library(psych)
WM <- read.table("DAA.02.txt", header=T)
split_data <- split(WM, WM$cond, drop= F)
#Plot regression line
layout(matrix(c(1,2,3,4,5,6,7,8),4,2, byrow = TRUE)

#correlation in pre training in des condition
print(cor(split_data$des$pre.wm.s1, split_data$des$pre.wm.s2))
print(cor(split_data$des$pre.wm.v1, split_data$des$pre.wm.v2))
#correlation in pre training in aer condition
print(cor(split_data$aer$pre.wm.s1, split_data$aer$pre.wm.s2))
print(cor(split_data$aer$pre.wm.v1, split_data$aer$pre.wm.v2))
#correlation between pre and post training in des condition
print(cor(split_data$des$pre.wm.s1, split_data$des$post.wm.s1))
print(cor(split_data$des$pre.wm.s2, split_data$des$post.wm.s2))
print(cor(split_data$des$pre.wm.v1, split_data$des$post.wm.v1))
print(cor(split_data$des$pre.wm.v2, split_data$des$post.wm.v2))
#correlation between pre and post training in aer condition
print(cor(split_data$aer$pre.wm.s1, split_data$aer$post.wm.s1))
print(cor(split_data$aer$pre.wm.s2, split_data$aer$post.wm.s2))
print(cor(split_data$aer$pre.wm.v1, split_data$aer$post.wm.v1))
print(cor(split_data$aer$pre.wm.v2, split_data$aer$post.wm.v2))
