# Ejercicio 5

# Definicion de la funcion f(x)
myfun <- function(x){
	ifelse(x<0, sin(x), ifelse(x<2, x^2, 4*exp(x-2)))
}

# Asignamos varios valores a x
xval <- seq(-10, 5, by=0.1)

# Plot de f(x)
plot(x=xval,y=myfun(xval),type="l")