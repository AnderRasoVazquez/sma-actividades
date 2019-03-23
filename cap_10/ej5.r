# Ejercicio 5

# Varios valores para x
x <- -5:5; 

# 1 valor para x
x <- -5;

# Definicion de f(x)
f <- function(x){x^2}
 if(x<0){
 f <- function(x){sin(x)}
}else if (x>=2){
 f <- function(x){4*exp(1)^(x-2)}
}

# Plot de f(x)
plot(f,5,-5,type="l")

#Resultado de f(x)
paste("El valor de f es", f(x))