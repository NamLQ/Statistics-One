#Statistics One, Exercise Week 5
#Student t test, ANOVA

#load library
library(psych)

#read table
wm = read.table("supplemental_STATS1.EX.07.txt", header = T)

#Create subset of data for control and training conditions
wm.c = subset(wm, wm$train == "0")
wm.t = subset(wm, wm$train == "1")

wm.c.out = describe(wm.c)
wm.c.out

wm.t.out = describe(wm.t)
wm.t.out

#Dependent t tesst
t.test(wm.c$pre,wm.c$post, paired = T)
t.test(wm.t$pre,wm.t$post, paired = T)

#Cohen's d for dependent t-test.
d.c = (wm.c.out[4,3])/(wm.c.out[4,4])
d.c

d.t = (wm.t.out[4,3])/(wm.t.out[4,4])
d.t

#Independent t-tests
t.test(wm$gain ~ wm$train, var.equal = T)

#the number is df/N
pooled.sd = (79/118 * wm.t.out[4,4]) + (39/118 * wm.c.out[4,4])
d.ct= (wm.t.out[4,3]) - mm.c.out[4,3])/ pooled.sd
d.ct

#ANOVA
aov.model = aov(wm.t$gain ~ wm.t$cond)
summary (aov.model)
aov.table = summary(aov.model)

#Effect size for Anova
ss = aov.table[[1]]$"Sum Sq"
eta.sq = ss[1]/ (ss[1] + ss[2])
eta.sq

#post hoc tests
TurkeyHSD(aov.model)

#Levene's test (test assumption)
library(car)
leveneTest(wm.t$gain, wm.t$cond, center= "mean")
