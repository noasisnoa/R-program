Trees
summary(trees)
library(psych)

qqnorm(trees$Volume)
qqline(trees$Volume)
shapiro.test(trees$Volume)


qqnorm(trees$Girth)
qqline(trees$Girth)
shapiro.test(trees$VGirth)


qqnorm(trees$Height)
qqline(trees$Height)
shapiro.test(trees$Height)

boxplot(trees)
install.packages('jmv')
install.packages('readr')
library(readr)

write_csv(trees,"/Users/ilan/R/2021.04.07/trees.csv")