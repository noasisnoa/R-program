library(readr)
math <-read_csv('/Users/ilan/data/descriptive.csv')
math

attch(math)
math <-math$math
str(math)

library(psych)
describe(math)

qt(0.025, 29)

t.test(math, mu=65)
