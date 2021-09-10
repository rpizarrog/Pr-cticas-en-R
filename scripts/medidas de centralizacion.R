# MEDIDAS DE CENTRALIZACIÍN CON DATOS
seed.set(2021)
edades <- sample(18:65, 500, replace = TRUE)
edades

edades[100]
head(edades)


# MEDIA 
# SUMAR TODOS Y DIVIDIR ENTRE n

n <- length(edades)
n

sum(edades) / n

# Usando mean
media.edades <- mean(edades)
media.edades

# ORDENAR LOS DATOS
edades.ordenadas <- sort(edades, decreasing = FALSE)
edades.ordenadas


# MEdiana
mediana.edades <- median(edades)
mediana.edades

