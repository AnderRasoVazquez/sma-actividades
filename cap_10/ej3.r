# Ejercicio 3

# El ejercicio pide cargar el fichero del disco duro "C".
# Uso Linux así que no existe el disco duro "C", por lo tanto, lo cargo donde está en mi PC.
# 
# Como tampoco se especifica el formato del archivo ".txt", lo guardo como un CSV que es
# lo que usamos en otras asignaturas.
#
# Contenido de "entrada.txt":
# "hora","nivel" 
# 2,-21.5
# 3,28.5
# 5,-54
# 8,-23.5
# 9,20
# 11,22
# 14,-47
# 15,50.8
datos <-read.csv("file:///home/ander/github/sma-actividades/cap_10/entrada.txt")

datos$nivel <- datos$nivel^2
datos$hora <- datos$hora^2

write.csv(datos, "file:///home/ander/github/sma-actividades/cap_10/salida.txt", row.names=FALSE)  # no pongo índices de línea

# Contenido de "salida.txt"
# "hora","nivel"
# 4,462.25
# 9,812.25
# 25,2916
# 64,552.25
# 81,400
# 121,484
# 196,2209
# 225,2580.64
