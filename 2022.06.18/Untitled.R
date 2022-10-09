library(readr)
mg<-read.csv('/Users/ilan/data/xymg.csv')
mg

plot(mg$y~mg$x)

lm(mg$y~mg$x)
out<-lm(mg$y~mg$x)
summary(out)

abline(out)



math<-c(65, 50, 55, 65, 55, 70, 65, 70, 55, 70, 50, 55)
x2<-c(3,7,5,1,3,3,1,2,4,2,3,4)
satas<-c(85, 74, 76, 90, 85, 87, 94, 98, 81, 91, 76, 74)
lm(satas~math+x2)
data2 <-lm(satas~math+x2)
summary(data2)

plot(data2)
abline(data2)

qt(0.05, 20)

data<-read.csv('/Users/ilan/data/trt.csv', fileEncoding = 'UTF-8-BOM', header = T)

data<-read.csv('/Users/ilan/data/trt.csv')
str(data)

data$trt<-factor(data$trt, levels = c('A', 'B', 'C', 'D', 'E'))
data1<- lm(response~trt,  data=data)
summary(data1)
anova(data1)
sse<

wheat<-read.csv('/Users/ilan/data/wheat.csv')
데이터의 길이를 맞춰주는 작업
wheat1<-rep(c('A1', 'A2', 'A3', 'A4'), 3)
wheat1<-as.factor(wheat1)
wheat1

kind<-rep(c('B1', 'B2', 'B3'), 4)
kind1<-as.factor(kind)
kind1

y<-c(64, 72, 74, 55, 57, 47, 59, 66, 58, 58, 57, 53)

two_way_anov <-aov(y~wheat1+kind1)
summary((two_way_anov))

library(readr)
wheat_kind<-read_csv('/Users/ilan/data/wheat_kind.csv')

kind <-c('B1','B1','B1','B2','B2','B2','B3','B3','B3')
kind<-as.factor(c(rep(kind, 4)))
kind

wheat<-c(rep('A1', 9), rep('A2', 9), rep('A3', 9), rep('A4',9))
wheat<-as.factor(wheat)
wheat

y<-c(64,66,70,72,81,64,74,51,65,65,63,58,57,43,52,47,58,67,59,68,65,66,71,59,58,39,42,58,41,46,57,61,53,53,59,38)
qf(0.05,4,20)

two_aov<-aov(y~wheat+kind)
summary(two_aov)

library(vcd)
attach(Arthritis)
str(Arthritis)
chisq.test(Treatment, Improved)
qchisq(0.05, 2)

library(vcd)
attach(Arthritis)
chisq.test()
qchisq(0.05,2)

assocstats()
