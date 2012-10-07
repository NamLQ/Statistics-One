#Statistics One Week 4
#Moderation analysis 

#Load library
library(psych)

#Load file to data frame
mod <- read.table("supplemental_STATS1.EX.06.txt", header=TRUE)

#descriptive statistics
print(describe(mod))
layout(matrix(c(1,2,3,4,5,6),2,3,byrow=T)) #create blank page
hist(mod$happy)
hist(mod$extra)
hist(mod$diverse)

#scatterplots to test linear and plot(med$happy ~ med$extra)
abline(lm(mod$happy ~ mod$extra))
plot(mod$diverse ~ mod$extra)
abline(lm(mod$diverse ~ mod$extra))
plot(mod$happy ~ mod$diverse)
abline(lm(mod$happy ~ mod$diverse))

#Conduct two regression analysis

no.mod.model = lm(mod$happy ~ mod$extra + mod$ses)
print(summary(no.mod.model))

mod.model = lm(mod$happy ~ mod$extra + mod$ses + mod$mod)
print(summary(mod.model))

#Compare models
print(anova(no.mod.model, mod.model))


