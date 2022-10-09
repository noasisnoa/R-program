attach(trees)
str(trees)
head(trees)
trees
mean(trees$Girth)
mean(trees$Height)
mean(trees$Volume)

median(trees$Girth)
median(trees$Height)
median(trees$Volume)

mode(trees) # 최빈값


summary(trees)

quantile(Height)
fivenum(Height)

fivenum(Height)[1]
fivenum(Height)[3]

Q0 <-fivenum(Height)[4] - fivenum(Height)[2]
Q0

Q1 <-fivenum(Girth)[4] - fivenum(Girth)[2]
Q1

Q2 <-fivenum(Volume)[4] - fivenum(Volume)[2]
Q2

IQR(Height)
IQR(Girth)
IQR(Volume)

#Height
left <-fivenum(Height)[2] - 1.5*IQR(Height); left
right <-fivenum(Height)[4] + 1.5*IQR(Height); right
upper_outlier <-Height[which(Height>right)]
upper_outlier
lower_outlier <-Height[which(Height<left)]; lower_outlier
       
#Girth
left <-fivenum(Girth)[2] - 1.5*IQR(Girth); left
right <-fivenum(Girth)[4] + 1.5*IQR(Girth); right
upper_outlier <-Girth[which(Girth>right)]; upper_outlier
lower_outlier <-Girth[which(Girth<left)]; lower_outlier

#Volume
left <-fivenum(Volume)[2] - 1.5*IQR(Volume); left
right <-fivenum(Volume)[4] + 1.5*IQR(Volume); right
upper_outlier <-Volume[which(Volume>right)]; upper_outlier
lower_outlier <-Volume[which(Volume<left)]; lower_outlier

boxplot(trees)

x<-seq(-3, 3, 0.01)
plot(x, dnorm(x))
plot(x, dnorm(x), type = 'l')

install.packages("jmv")
library(psych)
describe(trees)

hist(Volume)
hist(Volume, probability = T)
lines(density(Volume), col = "blue" )

hist(Height)
hist(Height, probability = T)
lines(density(Height), col = "blue" )

#정규성 검정
qqnorm(Volume)
qqline(Volume)
shapiro.test(Volume)
