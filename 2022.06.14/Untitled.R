library(readr)

height<-read_csv('/Users/ilan/data/height.csv')
cor.test(height)

man<-c(71, 68, 66, 67, 70, 71, 70, 73, 72, 65, 66)
woman<-c(69, 64, 65, 63, 65, 62, 65, 64, 66, 59, 62)
lm(man~woman)
cor(man, woman)
cor.test(man, woman)

math<-c(65, 50, 55, 65, 55, 70, 65, 70, 55, 70, 50, 55)
satas<-c(85, 74, 76, 90, 85, 87, 94, 98, 81, 91, 76, 74)
plot(satas~math)
lm(satas~math)

out<-lm(satas~math)
summary(out)
mg<-read.csv('/Users/ilan/data/mg.csv')
lm(y~x)

math<-c(65, 50, 55, 65, 55, 70, 65, 70, 55, 70, 50, 55)
x2<-c(3,7,5,1,3,3,1,2,4,2,3,4)
satas<-c(85, 74, 76, 90, 85, 87, 94, 98, 81, 91, 76, 74)
lm(satas~math+x2)
data2 <-lm(satas~math+x2)
summary(data2)
qt(0.05, 20)
5/2

sqrt(228.31)

64.32+1.71*(15.11/sqrt(25))
64.32+1.96*(15/sqrt(25))

qt(0.025,29)

data<-read.csv('/Users/ilan/data/data(0615).csv', fileEncoding = 'UTF-8-BOM', header = T)
str(data)

data$trt<-factor(data$trt, levels = c('A', 'B', 'C', 'D', 'E'))
data1<- lm(response~trt, data=data)
lm(data1)                 


wheat<-read.csv('/Users/ilan/data/wheat.csv')
wheat1<-rep(c('X1', 'X2', 'X3', 'X4'), 3)
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

two_aov<-aov(y~wheat+kind)
summary(two_aov)

library(vcd)
attach(Arthritis)
str(Arthritis)
chisq.test(Treatment, Improved)
qchisq(0.05, 2)

assocstats(xtabs(~Treatment+ Improved, data=Arthritis))

mantelhaen.test(xtabs(~Treatment + Improved, data=Arthritis))

검정 통계량과 기각역 구하기

city_local<-read.csv('/Users/ilan/data/city_local.csv')
cor.test(city_local$city, city_local$local)
qt(0.05, 20)

man<-c(71, 68, 66, 67, 70, 71, 70, 73, 72, 65, 66)
woman<-c(69, 64, 65, 63, 65, 62, 65, 64, 66, 59, 62)
cor.test(man, woman)
t.test(0.05, 20)
