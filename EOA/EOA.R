EOA <-read.csv("/Users/ilan/data/Effect of alcohol consumption on college life (2).csv", stringsAsFactors = TRUE, fileEncoding = "euc-kr")

names(EOA) <- c('Sex', 'Grade', 'Drinked', "AOA", "NOD", "FA", "GORA", "AORN", "AOC", "AOS")
install.packages("descr")
library(descr)
EOA

freq(EOA$Sex, plot = T, main = 'Sex')
freq(EOA$Grade, plot = T, main = 'Grade')
freq(EOA$Drinked, plot = T, main = 'Deinked')
freq(EOA$AOA, plot = T, main = 'AOA')
freq(EOA$NOD, plot = T, main = 'NOD')
freq(EOA$FA, plot = T, main = 'FA')
freq(EOA$GORA, plot = T, main = 'GORA')
freq(EOA$AORN, plot = T, main = 'AORN')
freq(EOA$AOC, plot = T, main = 'AOC')
freq(EOA$AOS, plot = T, main = 'AOS')

dev.new(width=550, height=330, unit = 'px')

par(mar = c(1, 2, 1, 1))
boxplot(EOA$AOA, main="AOA")
boxplot(EOA$NOD, main = "NOD")


pie(table(EOA$Sex), main = "Sex")
pie(table(EOA$Grade), main = "Grade")
pie(table(EOA$Drinked), main = 'Drinked')
pie(table(EOA$AOA), main = "AOA")
pie(table(EOA$NOD), main ="NOD")
pie(table(EOA$FA), main = "FA")
pie(table(EOA$GORA), main = "GORA")
pie(table(EOA$AORN), main = "AORN")
pie(table(EOA$AOC), main =  "AOC")
pie(table(EOA$AOS), main =  "AOS")

data(EOA)
plot( x = EOA$AOA, y = EOA$NOD)
pairs(EOA)

install.packages("psych")
library(psych)
pairs.panels(EOA)

library(ggplot2)
ggplot(EOA, aes(x = factor(Sex) , y = FA, fill = factor(FA))) + geom_bar(stat = "identity")

ggplot(EOA, aes(x = factor(Sex) , y = GORA, fill = factor(GORA))) + geom_bar(stat = "identity", position = "dodge")
ggplot(EOA, aes(x = factor(Sex) , y = NOD , fill = factor(NOD))) + geom_bar(stat = "identity")
# 설문지에 참여한 여학생들은 혼자 술을 마시지 않는다. 


ggplot(EOA, aes(x = factor(Drinked) , y = AORN, fill = factor(AORN))) + geom_bar(stat = "identity") 
# 술을 마신 적이 있는 사람이든 아닌 사람든 술자리가 이점이 있다고 생각을 한다. 
ggplot(EOA, aes(x = factor(AORN) , y = AOC, fill = factor(AOC))) + geom_bar(stat = "identity") 
ggplot(EOA, aes(x = factor(AORN) , y = AOS, fill = factor(AOS))) + geom_bar(stat = "identity") 
#술 경험 유무 없이 모두 술자리가 대학생활, 사회생활에 이점이 잇다고 생각한다.

ggplot(EOA, aes(x = factor(NOD) , y = AOC, fill = factor(AOC))) + geom_bar(stat = "identity") 
ggplot(EOA, aes(x = factor(NOD) , y = AOS, fill = factor(AOS))) + geom_bar(stat = "identity") 
# 술자리에 참여하는 사람들도 대학생활과 사회생활에 이점이 있다고 생각한다. 

temp = cor(EOA)
install.packages("corrplot")
library(corrplot)
corrplot::corrplot(corr = temp)

write.csv(EOA,"/Users/ilan/R/Effect of alcoho/EOA.csv")
inf<-read.csv("/Users/ilan/R/2020.03.27/infant.csv")
