cho1<-read.csv('/Users/ilan/Data/cho.csv', fileEncoding = 'UTF-8', header = T)
str(cho1)

cho1$trt<-factor(cho1$trt, levels = c('drugA','drugB', 'drugC'))

out<-lm(response~trt,,data=cho1)
summary(out)

anova(out)

install.packages('multcomp')
library(multcomp)

out<-lm(response~trt, data=cho1)
dunnett<-glht(out, linfct = mcp(trt='Dunnett'))
summary(dunnett)


cho1<-read.csv('/Users/ilan/Data/Data.csv', fileEncoding = 'UTF-8', header = T)
str(cho1)

cho1$trt<-factor(cho1$trt, levels = c('drugA','drugB', 'drugC','drugD', 'drugE'))
out<-lm(response~trt, data=cho1)
summary(out)

anova(out)
out<-lm(response~trt, data=cho1)
dunnett<-glht(out, linfct = mcp(trt='Dunnett'))
summary(dunnett)
qf(0.05,4,20)

