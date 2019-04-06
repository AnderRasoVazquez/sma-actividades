data(chickwts)
attach(chickwts)
chickwts

#Separamos en vectores los 71 elementos.
weight.casein<-weight[feed=="casein"]
weight.casein
weight.meatmeal<-weight[feed=="meatmeal"]
weight.meatmeal
weight.sunflower<-weight[feed=="sunflower"]
weight.sunflower
weight.soybean<-weight[feed=="soybean"]
weight.soybean
weight.linseed<-weight[feed=="linseed"]
weight.linseed
weight.horsebean<-weight[feed=="horsebean"]
weight.horsebean
 
 
#DIAGRAMAS
par(mfrow=c(3,2))
hist(weight.casein,breaks=10,xlim=c(200,450),ylim=c(0,4),col="red")
hist(weight.horsebean,breaks=10,xlim=c(100,235),ylim=c(0,4),col="blue")
hist(weight.linseed,breaks=10,xlim=c(140,310),ylim=c(0,4),col="green")
hist(weight.soybean,breaks=10,xlim=c(100,350),ylim=c(0,4),col="orange")
hist(weight.sunflower,breaks=10,xlim=c(250,450),ylim=c(0,4),col="purple")
hist(weight.meatmeal,breaks=10,xlim=c(200,400),ylim=c(0,4),col="brown")
