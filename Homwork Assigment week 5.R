#Statistics One, Assigment Week 5

#load library
library(psych)

#read table
uat = read.table("DDA.04.txt" header= T)

#Create subsets of data for WM and SP training

uat.sp = subset(uat, uat$training=="SP")
uat.wm = subset(uat, uat$training =="WM")

uat.sp.out = describe(uat.sp)
uat.sp.out

uat.wm.out = describe(uat.wm)
uat.wm.out

#dependent t tests
t.test(uat.sp$pre.uat, uat.sp$post.uat, paired= T)
t.test(uat.wm$pre.uat, uat.wm$post.uat, paired= T)

#Cohen's for dependent t test
d.c = (uat.sp.out[4,3])/(uat.sp.out[4,4])
d.c

d.t = (uat.sp.out[4,3])/(uat.wm.out[4,4])
d.t

#independent t test
t.test(uat.sp$gain, uat.wm$gain, var.equal = T)

#Cohen d test
pooled.sd = (uat.sp.out[4,4]) + (uat.wm.out[4,4])
d.ct= (23 - 19)/ pooled.sd
d.ct

