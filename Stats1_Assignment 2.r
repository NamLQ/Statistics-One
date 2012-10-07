#Statistics One, Assignment 2.
#1) Provides descriptive statistics for all 8 measures, for each condition.
#2) Provides an 8x8 correlation matrix, for each condition.

#Assignment 2 part 1
# Provides descriptive statistics for all 8 measures, for each condition.
#Test/re-test reliability analysis, row format
library(psych)
#Read the data into a dataframe called wmc (working memory capacity)
wmc<-read.table("DAA.02.txt", header=T)
#what type of object is wmc?
class(wmc)
#List the names of the variables in the dataframe called impact.row
names(wmc)

# is it necessary attach function??
attach(wmc)
#Descriptive statistics #function describe.by is used when have categorical variables
describe.by(wmc, wmc$cond)

#Create subset to divide the 2 "cond" factors "des" & "aer" to analyze separate
wmc.des<-subset(wmc,wmc$cond=="des")
wmc.des
wmc.aer<-subset(wmc,wmc$cond=="aer")
wmc.aer

#correlation matrix for all variables, for each condition
# first, measure correlation and realibility of working memory capacity Designed sports training (des)
# since row 1&2 are not taken part on correlation analysis, just remove with "[]". 'cos if you consider row 2 "cond" error ocurr: "x must be numeric"
print(cor(wmc.des[3:10]))
# second, measure correlation and realibility of working memory capacity Aerobic training (aer)
print(cor(wmc.aer[3:10]))
