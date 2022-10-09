library(readr)
Data <-read_csv('/Users/ilan/data/descriptive.csv')
attach(Data)
Data
math <-Data$math
describe(math)
t.test(math, mu=65)

head(Data)
str(Data)

levels(Data$gender)
gender<-factor(Data$gender)
levels(gender)

install.packages('gmodels')
library(gmodels)
CrossTable(math, gender, chisq = F)
aggregate(math~gender, data=Data,mean)

library(psych)
describeBy(math, list(gender=Data$gender))
t.test(math~gender, var.equal = T, data=Data)
