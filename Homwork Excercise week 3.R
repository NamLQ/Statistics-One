#Statistics One, Week 3 Exercise R
#Multiple regression analysis

#load library
library(psych)

#read data into data frame called "endur"
endur <- read.table("supplemental_STATS1.EX.04.txt", header=T)

#examine scatterplot
plot(endur$endurance ~ endur$age, main = "Scatterplot", ylab = "Endurance", xlab = "Age")
abline(lm(endur$endurance ~ endur$age), col-"blue")

#Simple regression
model1 = lm(endur$endurance ~ endur$age)
print(summary(model1))
model2 = lm(endur$endurance ~ endur$activeyears)
print(summary(model2))

#Multiple regression
model3 = lm(endur$endurance ~ endur$age + endur$activeyears)
print(summary(model3))

#Check the homoscedasticity assumption 
#plot a residual versus predicted value 

model3.res = resid(model3)

plot(endur$endurance, model3.res, ylab="Residuals", xlab="Endurance", main="Residual analysis")

plot(endur$age, model3.res, ylab="Residuals", xlab="Age", main="Residual analysis")

#Statistics One, Week 3 exercise
#Multiple regression analysis with standardized regression coefficients

model1.z = lm(scale(endur$endurance) ~ scale(endur$age))
print(summary(model1.z))

model2.z = lm(scale(endur$endurance) ~ scale(endur$activeyears))
print(summary(model2.z))

model3.z = lm(scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))
print(summary(model3.z))

#model comparisons
comp1 = anova(model1.z, model3.z)
print(comp1)
comp2 = anova(model2.z, model3.z)
print(comp2)

