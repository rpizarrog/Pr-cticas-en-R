# Generar data.frame de productos, marcas  y tallas

# Hay cuatro tipos de productos
productos <- c('PANTALON', 'CAMISA', 'PLAYERA', 'ZAPATOS')

# Todos los productos tienes las mismas tres tipos de marcas
marcas <- c("X", "Y", "Z")

# Los pantalones, las camisas y las playeras tienen tallas diferentes
# C Chica, M Mediana, G Grande, X Extra Grande
tallas.PANTALON <- c("C", "M", "G")
tallas.CAMISAS <- c("M", "G")
tallas.PLAYERAS <- c("C", "M", "G", "X")

# Los zapatos tienen medidas particulares
tallas.ZAPATOS <- as.character(c(24:28))


productos
marcas
tallas.PANTALON
tallas.CAMISAS
tallas.PLAYERAS
tallas.ZAPATOS

genero <- c("Femenino", "Masculino")
genero


pantalones <- data.frame("productos" = c(rep(productos[1], length(marcas) * length(tallas.PANTALON) * length(genero))),
                         "marcas" = c(rep(marcas[1], length(tallas.PANTALON)* length(genero)), 
                                      rep(marcas[2], length(tallas.PANTALON)* length(genero)),
                                      rep(marcas[3], length(tallas.PANTALON)* length(genero))),
                         "tallas" = c(rep(tallas.PANTALON[1], length(marcas) * length(genero)),
                                      rep(tallas.PANTALON[2], length(marcas) * length(genero)),
                                      rep(tallas.PANTALON[3], length(marcas) * length(genero))),
                         "genero" = c(rep(genero[1], length(marcas) * length(tallas.PANTALON)),
                                      rep(genero[2], length(marcas) * length(tallas.PANTALON))))
                         
                      

pantalones


camisas <- data.frame("productos" = c(rep(productos[2], length(marcas) * length(tallas.CAMISAS) * length(genero))),
                      "marcas" = c(rep(marcas[1], length(tallas.CAMISAS)* length(genero)), 
                                   rep(marcas[2], length(tallas.CAMISAS)* length(genero)),
                                   rep(marcas[3], length(tallas.CAMISAS)* length(genero))),
                      "tallas" = c(rep(tallas.CAMISAS[1], length(marcas) * length(genero)),
                                   rep(tallas.CAMISAS[2], length(marcas) * length(genero))),
                      "genero" = c(rep(genero[1], length(marcas) * length(tallas.CAMISAS)),
                                   rep(genero[2], length(marcas) * length(tallas.CAMISAS))))
camisas

playeras <- data.frame("productos" = c(rep(productos[3], length(marcas) * length(tallas.PLAYERAS) * length(genero))),
                       "marcas" = c(rep(marcas[1], length(tallas.PLAYERAS)* length(genero)), 
                                    rep(marcas[2], length(tallas.PLAYERAS)* length(genero)),
                                    rep(marcas[3], length(tallas.PLAYERAS)* length(genero))),
                       "tallas" = c(rep(tallas.PLAYERAS[1], length(marcas) * length(genero)),
                                    rep(tallas.PLAYERAS[2], length(marcas) * length(genero)),
                                    rep(tallas.PLAYERAS[3], length(marcas) * length(genero)),
                                    rep(tallas.PLAYERAS[4], length(marcas) * length(genero))),
                       "genero" = c(rep(genero[1], length(marcas) * length(tallas.PLAYERAS)),
                                    rep(genero[2], length(marcas) * length(tallas.PLAYERAS))))
playeras

zapatos <- data.frame("productos" = c(rep(productos[4], length(marcas) * length(tallas.ZAPATOS) * length(genero))),
                      "marcas" = c(rep(marcas[1], length(tallas.ZAPATOS)* length(genero)), 
                                   rep(marcas[2], length(tallas.ZAPATOS)* length(genero)),
                                   rep(marcas[3], length(tallas.ZAPATOS)* length(genero))),
                      "tallas" = c(rep(tallas.ZAPATOS[1], length(marcas) * length(genero)),
                                   rep(tallas.ZAPATOS[2], length(marcas) * length(genero)),
                                   rep(tallas.ZAPATOS[3], length(marcas) * length(genero)),
                                   rep(tallas.ZAPATOS[4], length(marcas) * length(genero)),
                                   rep(tallas.ZAPATOS[5], length(marcas) * length(genero))),
                      "genero" = c(rep(genero[1], length(marcas) * length(tallas.ZAPATOS)),
                                   rep(genero[2], length(marcas) * length(tallas.ZAPATOS))))
zapatos


# ESPACIO MUESTRAL
S <- rbind(pantalones, camisas, playeras, zapatos)
S
