library(MASS)
data(cabbages)
attach(cabbages)
boxplot(HeadWt~Cult, main="HeadWt by Cult")
boxplot(HeadWt~Date, main="HeadWt by Date")


summary(VitC)
var(VitC)
sd(VitC)

regresion <- lm(VitC~HeadWt)
plot(VitC~HeadWt, main="Regresión lineal")
abline(regresion)
predict(regresion, data.frame(HeadWt = c(2.125)))
