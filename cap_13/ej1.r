# install.packages("lpSolve")  # si no está instalado el paquete hay que instalarlo
library(lpSolve)

######### PLANTEAMIENTO DEL PROBLEMA ###################
# Objetivo: minimizar el coste
#
# Descripción de las variables:
# x1 = piezas máquina 1
# x2 = piezas máquina 2
# x3 = piezas máquina 3
# 
# min Z = 11.2*x1 + 14*x2 + 12.3*x3
# 
# x1 + x2 + x3 = 500
# x1 <= 300
# x2 <= 250
# x3 <= 270
# x1,x2,x3 >= 0 y enteras
########################################################

coef.obj <- c(11.2, 14, 12.3)  # coeficientes objetivo
coef.res.li <- matrix(c(1, 1, 1,    1, 0, 0,   0, 1, 0,    0, 0, 1), nrow=4, byrow=TRUE)  # coeficientes de las restricciones del lado izquierdo
res.dir <- c("=", "<=", "<=", "<=")  # vector de direcciones de todas las desigualdades
coef.res.ld <- c(500, 300, 250, 270)  # coeficientes del lado derecho de las restricciones

A <- lp(direction="min", coef.obj, coef.res.li, res.dir, coef.res.ld, int.vec=c(1,2,3), all.int=T)
A
# Success: the objective function is 5820 
A$solution
# [1] 300   0 200