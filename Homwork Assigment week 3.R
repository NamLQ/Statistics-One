#Statistics One, Week 3 Assignment R
#Multiple regression analysis

#load library
library(psych)

#read data into data frame called "endur"
endur <- read.table("DAA.03.txt", header=T)

#Correlation between age and endurance
cor(endur$age, endur$endurance)

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

model4 = lm(endur$endurance ~ endur$activeyears + endur$age)
print(summary(model4))

#Statistics One, Week 3 exercise
#Multiple regression analysis with standardized regression coefficients

model1.z = lm(scale(endur$endurance) ~ scale(endur$age))
print(summary(model1.z))

model2.z = lm(scale(endur$endurance) ~ scale(endur$activeyears))
print(summary(model2.z))

model3.z = lm(scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))
print(summary(model3.z))

model4.z = lm(scale(endur$endurance) ~ scale(endur$activeyears) + scale(endur$age))
print(summary(model4.z))

#model comparisons
comp1 = anova(model1.z, model3.z)
print(comp1)
comp2 = anova(model2.z, model3.z)
print(comp2)

