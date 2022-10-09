## 20220926 다변량
bumpus <-read.csv("E:/University class/Rdata/bumpus.csv")

bumpus<-subset(bumpus, select = c('X1', 'X2', 'X3', 'X4', 'X5'))
head(bumpus)

#prcomp()함수로 주성분 구하기
pca<-prcomp(bumpus, scale = T)
pca

#standard deviations : 주성분의 표준편차값/ 1 이상인 주성분이 의미가 있음
#Rtation은상관계수 행렬의 고유백터이다.
round(predict(pca), 3)

#그래프 그리기
screeplot(pca, type = 'l', pch = 19, col = 'red', main ='Sree plot', lwd = '4')

biplot(pca, cex = c(0.5, 0.75), main = 'BiPlot')
#+ 쪽으로 가면 양의 상관관계, -으로 가면 음의 상관관계