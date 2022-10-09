head(state.x77)
states<-data.frame(state.x77[,c('Population','Income','Illiteracy', 'Murder','Frost')])
head(states)

cor(states)
str(states)

library(psych)
corr.test(states, use='pairwis')
states<-lm(formula = Murder~Income+Illiteracy+Frost+Population, data=states)
summary(states)

zstates<-data.frame(scale(states))
zfit<-(Murder~Income+Illiteracy+Frost+Population)
lm(formula = Murder~Income+Illiteracy+Frost+Population, data=zstates)
summary(zfit)
