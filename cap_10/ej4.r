# Ejercicio 4

library(datasets)

### Descripción de los campos que se van a usar ###
# am: Transmission (0 = automatic, 1 = manual)
# mpg: Miles/(US) gallon
# wt: Weight (1000 lbs)
# hp:	Gross horsepower

# automóviles que tienen cambio automático
df_automatic <- mtcars[mtcars$am == 0,]

# vehículos que hacen menos de 16 millas por galón de combustible
df_less_16_mpg <- mtcars[mtcars$mpg < 16,]

# vector con las potencias de los automóviles que pesan más de 3000 libras
vect <- mtcars[mtcars$wt > 3,]$hp  # pongo "3" porque el peso está en miles de libras
