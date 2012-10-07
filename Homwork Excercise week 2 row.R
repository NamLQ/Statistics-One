#Statistics One, Lecture 6, example script
#Test/retest reliability analysis, collumn format
library(psych)
impact.row <- read.table ("supplemental_STATS1.EX.03.ROW.txt", header=T)
names(impact.row)
describe(impact.row)
print(cor(impact.row$memory.verbal[impact.row$test=="A"], impact.row$memory.verbal[impact.row$test=="B"]))
print(cor(impact.row$memory.visual[impact.row$test=="A"], impact.row$memory.visual[impact.row$test=="B"]))
print(cor(impact.row$speed.vismotor[impact.row$test=="A"], impact.row$speed.vismotor[impact.row$test=="B"]))
print(cor(impact.row$speed.general[impact.row$test=="A"], impact.row$speed.general[impact.row$test=="B"]))
print(cor(impact.row$impulse.control[impact.row$test=="A"], impact.row$impulse.control[impact.row$test=="B"]))
#describe.by used when have two catergory variables
print(describe.by(impact.row, impact.row$test))
