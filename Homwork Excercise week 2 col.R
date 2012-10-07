#Statistics One, Lecture 6, example script
#Test/retest reliability analysis, collumn format
library(psych)
impact.col <- read.table ("supplemental_STATS1.EX.03.COL.txt", header=T)
names(impact.col)
describe(impact.col)
layout(matrix(c(1:10),5,2,byrow=T))
print(cor(impact.col$memory.verbal.A, impact.col$memory.verbal.B))
print(cor(impact.col$memory.visual.A, impact.col$memory.visual.B))
print(cor(impact.col$speed.vismotor.A, impact.col$speed.vismotor.B))
print(cor(impact.col$speed.general.A, impact.col$speed.general.B))
print(cor(impact.col$impulse.control.A, impact.col$impulse.control.B))
