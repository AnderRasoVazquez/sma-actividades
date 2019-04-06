library(MASS)
data(cabbages)
attach(cabbages)

boxplot(HeadWt~Cult, main="HeadWt by Cult")
boxplot(HeadWt~Date, main="HeadWt by Date")


summary(VitC)
median(VitC)
var(VitC)
sd(VitC)

regresion <- lm(VitC~HeadWt)
plot(VitC~HeadWt)
abline(lm(VitC~HeadWt))
predict(regresion, data.frame(HeadWt = c(2.125)))
