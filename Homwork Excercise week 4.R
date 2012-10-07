#Statistics One Week 4
#Mediation analysis
#X is extraversion
#Y is happiness
#M is diversity of life experience
#Moderation analysis

#load library
library(psych)
library(multilevel)

#load dataframe
med <- read.table("supplemental_STATS1.EX.05.txt", header= T)

print(describe(med)) #descriptive statistics
layout(matrix(c(1,2,3,4,5,6),2,3,byrow=T)) #create blank page
hist(med$happy)
hist(med$extra)
hist(med$diverse)

#scatterplots to test linear and plot(med$happy ~ med$extra)
abline(lm(med$happy ~ med$extra))
plot(med$diverse ~ med$extra)
abline(lm(med$diverse ~ med$extra))
plot(med$happy ~ med$diverse)
abline(lm(med$happy ~ med$diverse))

#regression analysis
model1 = lm(med$happy ~ med$extra)
print(summary(model1))
model2 = lm(med$diverse ~ med$extra)
print(summary(model2))
model3 = lm(med$happy ~ med$diverse + med$diverse)
print(summary(model3))

#homoscedasticity
model3.res = resid(model3)

plot(med$happy, model3.res, ylab="Residuals", xlab="Happy", main="Residual analysis")


#Sobel test (is the indirect path statistically signoficant?)
indirect = sobel(med$extra, med$diverse, med$happy)
print(indirect)