attach(trees)
names(trees)
boxplot(Height)
sort(Height)
fivenum(Height)
quantile(Height)
##Q0(아랫쪽/왼쪽 하한선)구하기
Q0<-fivenum(Height)[2]-1.5*IQR(Height)
Q0
##Q5(위쪽 / 오른쪽 상한선)구하기
Q5<-fivenum(Height)[4]+1.5*IQR(Height)
Q5
## 아웃라이어(이상치)구하기
##IQR사용하여 구하기
upper_outlier <-Height[which(Height>Q5)]
upper_outlier
lower_outlier <-Height[which(Height<Q0)]
lower_outlier
##boxplot.stats() 사용하여 구하기
upper_outlier2<-boxplot.stats(Height, do.out = T)
upper_outlier2
