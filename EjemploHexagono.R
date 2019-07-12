
### Proyecci?n de espectros de reflectancia en el hex?gono del color de Chittka


#install.packages("pavo")

library(pavo)

# Cargar y organizar datos
# Teniendo en una carpeta todos los archivos de texto (.txt) directamente exportados por el programa del espectrofot?metro (OceanOptics en este caso)

Espectro.chariIND27cerca <- getspec("./chariIND27cerca/",ext="txt",decimal=",",subdir=FALSE, subdir.names=FALSE)

# Si dentro de la carpeta hay m?s carpetas con espectros (Por ejemplo, una carpeta por cada especie) hay que cambiar subdir=TRUE

head(Espectro.chariIND27cerca) #Muestra los primeros datos

dim(Espectro.chariIND27cerca) #Para ver numero filas y columnas del espectro creado

Espectro.chariIND27cercab <- Espectro.chariIND27cerca
Espectro.chariIND27cercab$inf <-  rowMeans(Espectro.chariIND27cerca[,c("01_27c_inf", "02_27c_inf","03_27c_inf","04_27c_inf","05_27c_inf","06_27c_inf","07_27c_inf","08_27c_inf","09_27c_inf","10_27c_inf")])
Espectro.chariIND27cercab$med <-  rowMeans(Espectro.chariIND27cerca[,c("01_27c_med", "02_27c_med","03_27c_med","04_27c_med","05_27c_med","06_27c_med","07_27c_med","08_27c_med","09_27c_med","10_27c_med")])
Espectro.chariIND27cercab$sup <-  rowMeans(Espectro.chariIND27cerca[,c("01_27c_sup", "02_27c_sup","03_27c_sup","04_27c_sup","05_27c_sup","06_27c_sup","07_27c_sup","08_27c_sup","09_27c_sup","10_27c_sup")])
Espectro.chariIND27cercab$tub <-  rowMeans(Espectro.chariIND27cerca[,c("01_27c_tub", "02_27c_tub","03_27c_tub","04_27c_tub","05_27c_tub","06_27c_tub","07_27c_tub","08_27c_tub","09_27c_tub","10_27c_tub")])
Espectro.chariIND27cercab <- Espectro.chariIND27cercab[,c(1, 42,43, 44, 45)]
Espectro.chariIND27cercab
# Negative values. A veces, por problemas en la calibraci?n, aparecen valores de reflectancia negativos que no tienen sentido. Con este peque?o arreglo convertimos el dato m?s bajo en 0

# Cargar y organizar datos
# Teniendo en una carpeta todos los archivos de texto (.txt) directamente exportados por el programa del espectrofot?metro (OceanOptics en este caso)

Espectro.chariIND17 <- getspec("./chariIND17/",ext="txt",decimal=",",subdir=FALSE, subdir.names=FALSE)

# Si dentro de la carpeta hay m?s carpetas con espectros (Por ejemplo, una carpeta por cada especie) hay que cambiar subdir=TRUE

head(Espectro.chariIND17) #Muestra los primeros datos

dim(Espectro.chariIND17) #Para ver numero filas y columnas del espectro creado

Espectro.chariIND17b <- Espectro.chariIND17
Espectro.chariIND17b$inf <-  rowMeans(Espectro.chariIND17[,c("01_17_inf", "02_17_inf","03_17_inf","04_17_inf","05_17_inf","06_17_inf","07_17_inf","08_17_inf","09_17_inf","10_17_inf")])
Espectro.chariIND17b$med <-  rowMeans(Espectro.chariIND17[,c("01_17_med", "02_17_med","03_17_med","04_17_med","05_17_med","06_17_med","07_17_med","08_17_med","09_17_med","10_17_med")])
Espectro.chariIND17b$sup <-  rowMeans(Espectro.chariIND17[,c("01_17_sup", "02_17_sup","03_17_sup","04_17_sup","05_17_sup","06_17_sup","07_17_sup","08_17_sup","09_17_sup","10_17_sup")])
Espectro.chariIND17b$tub <-  rowMeans(Espectro.chariIND17[,c("01_17_tub", "02_17_tub","03_17_tub","04_17_tub","05_17_tub","06_17_tub","07_17_tub","08_17_tub","09_17_tub","10_17_tub")])
Espectro.chariIND17b <- Espectro.chariIND17b[,c(1, 42,43, 44, 45)]
Espectro.chariIND17b
# Negative values. A veces, por problemas en la calibraci?n, aparecen valores de reflectancia negativos que no tienen sentido. Con este peque?o arreglo convertimos el dato m?s bajo en 0

# Cargar y organizar datos
# Teniendo en una carpeta todos los archivos de texto (.txt) directamente exportados por el programa del espectrofot?metro (OceanOptics en este caso)

Espectro.chariIND18 <- getspec("./chariIND18/",ext="txt",decimal=",",subdir=FALSE, subdir.names=FALSE)

# Si dentro de la carpeta hay m?s carpetas con espectros (Por ejemplo, una carpeta por cada especie) hay que cambiar subdir=TRUE

head(Espectro.chariIND18) #Muestra los primeros datos

dim(Espectro.chariIND18) #Para ver numero filas y columnas del espectro creado

Espectro.chariIND18b <- Espectro.chariIND18
Espectro.chariIND18b$inf <-  rowMeans(Espectro.chariIND18[,c("01_18_inf", "02_18_inf","03_18_inf","04_18_inf","05_18_inf","06_18_inf","07_18_inf","08_18_inf","09_18_inf","10_18_inf")])
Espectro.chariIND18b$med <-  rowMeans(Espectro.chariIND18[,c("01_18_med", "02_18_med","03_18_med","04_18_med","05_18_med","06_18_med","07_18_med","08_18_med","09_18_med","10_18_med")])
Espectro.chariIND18b$sup <-  rowMeans(Espectro.chariIND18[,c("01_18_sup", "02_18_sup","03_18_sup","04_18_sup","05_18_sup","06_18_sup","07_18_sup","08_18_sup","09_18_sup","10_18_sup")])
Espectro.chariIND18b$tub <-  rowMeans(Espectro.chariIND18[,c("01_18_tub", "02_18_tub","03_18_tub","04_18_tub","05_18_tub","06_18_tub","07_18_tub","08_18_tub","09_18_tub","10_18_tub")])
Espectro.chariIND18b <- Espectro.chariIND18b[,c(1, 42,43, 44, 45)]
Espectro.chariIND18b


# Cargar y organizar datos
# Teniendo en una carpeta todos los archivos de texto (.txt) directamente exportados por el programa del espectrofot?metro (OceanOptics en este caso)

Espectro.chariIND24 <- getspec("./chariIND24/",ext="txt",decimal=",",subdir=FALSE, subdir.names=FALSE)

# Si dentro de la carpeta hay m?s carpetas con espectros (Por ejemplo, una carpeta por cada especie) hay que cambiar subdir=TRUE

head(Espectro.chariIND24) #Muestra los primeros datos

dim(Espectro.chariIND24) #Para ver numero filas y columnas del espectro creado

Espectro.chariIND24b <- Espectro.chariIND24
Espectro.chariIND24b$inf <-  rowMeans(Espectro.chariIND24[,c("01_24_inf", "02_24_inf","03_24_inf","04_24_inf","05_24_inf","06_24_inf","07_24_inf","08_24_inf","09_24_inf","10_24_inf")])
Espectro.chariIND24b$med <-  rowMeans(Espectro.chariIND24[,c("01_24_med", "02_24_med","03_24_med","04_24_med","05_24_med","06_24_med","07_24_med","08_24_med","09_24_med","10_24_med")])
Espectro.chariIND24b$sup <-  rowMeans(Espectro.chariIND24[,c("01_24_sup", "02_24_sup","03_24_sup","04_24_sup","05_24_sup","06_24_sup","07_24_sup","08_24_sup","09_24_sup","10_24_sup")])
Espectro.chariIND24b$tub <-  rowMeans(Espectro.chariIND24[,c("01_24_tub", "02_24_tub","03_24_tub","04_24_tub","05_24_tub","06_24_tub","07_24_tub","08_24_tub","09_24_tub","10_24_tub")])
Espectro.chariIND24b <- Espectro.chariIND24b[,c(1, 42,43, 44, 45)]
Espectro.chariIND24b

Espectro.inf <- Espectro.chariIND17b
Espectro.inf <- Espectro.inf[,c(1, 2)]
colnames(Espectro.inf) <- c("wl","IND17")
Espectro.inf$IND18 <- Espectro.chariIND18b$inf
Espectro.inf$IND24 <- Espectro.chariIND24b$inf
Espectro.inf$IND27c <- Espectro.chariIND27cercab$inf

Espectro.med <- Espectro.chariIND17b
Espectro.med <- Espectro.med[,c(1, 3)]
colnames(Espectro.med) <- c("wl","IND17")
Espectro.med$IND18 <- Espectro.chariIND18b$med
Espectro.med$IND24 <- Espectro.chariIND24b$med
Espectro.med$IND27c <- Espectro.chariIND27cercab$med

Espectro.sup <- Espectro.chariIND17b
Espectro.sup <- Espectro.sup[,c(1, 4)]
colnames(Espectro.sup) <- c("wl","IND17")
Espectro.sup$IND18 <- Espectro.chariIND18b$sup
Espectro.sup$IND24 <- Espectro.chariIND24b$sup
Espectro.sup$IND27c <- Espectro.chariIND27cercab$sup

Espectro.tub <- Espectro.chariIND17b
Espectro.tub <- Espectro.tub[,c(1, 5)]
colnames(Espectro.tub) <- c("wl","IND17")
Espectro.tub$IND18 <- Espectro.chariIND18b$tub
Espectro.tub$IND24 <- Espectro.chariIND24b$tub
Espectro.tub$IND27c <- Espectro.chariIND27cercab$tub


Espectro.inf.all <- Espectro.chariIND17
Espectro.inf.all <- Espectro.inf.all[,c(1, 2, 6, 10, 14, 18, 22, 26, 30, 34, 38)]
Espectro.inf.all <- cbind (Espectro.inf.all, Espectro.chariIND18[,c(2, 6, 10, 14, 18, 22, 26, 30, 34, 38)], Espectro.chariIND24[,c(2, 6, 10, 14, 18, 22, 26, 30, 34, 38)], Espectro.chariIND27cerca[,c(2, 6, 10, 14, 18, 22, 26, 30, 34, 38)])

Espectro.sup.all <- Espectro.chariIND17
Espectro.sup.all <- Espectro.sup.all[,c(1, 2, 6, 10, 14, 18, 22, 26, 30, 34, 38)]
Espectro.sup.all <- cbind (Espectro.sup.all, Espectro.chariIND18[,c(2, 6, 10, 14, 18, 22, 26, 30, 34, 38)], Espectro.chariIND24[,c(2, 6, 10, 14, 18, 22, 26, 30, 34, 38)], Espectro.chariIND27cerca[,c(2, 6, 10, 14, 18, 22, 26, 30, 34, 38)])


# Negative values. A veces, por problemas en la calibraci?n, aparecen valores de reflectancia negativos que no tienen sentido. Con este peque?o arreglo convertimos el dato m?s bajo en 0


Espectro <- procspec(Espectro.sup.all, fixneg = "addmin") # Suma a los espectros con valores negativos el valor m?nimo


# GR?FICOS #

aggplot(Espectro, FUN.center=mean, shade= spec2rgb(Espectro),alpha=0.3) # Plot using mean 

par(mfrow=c(1,1)) # Divide el espacio gr?fico en (nfilas, ncolumnas)

plot(Espectro,col = spec2rgb(Espectro)) #Dibuja el espectro con el color sacado del propio espectro

plot(Espectro, type="s", col=spec2rgb(Espectro)) 


#Obtencion variables

summary(Espectro, subset = c('B1', 'B2', 'S8','H1'))

# HONEYBEE HEXAGON #

vis.flowers <- vismodel(Espectro, visual = 'apis', qcatch = 'Ei', relative = FALSE, vonkries = TRUE, achro = 'l', bkg = 'green', illum="D65")
hex.flowers<-colspace(vis.flowers,space="hexagon")
head(hex.flowers) #muestra s,m,l,x,y,h.theta,r.vec,sec.fine,sec.coarse y lum
hexplot(hex.flowers, sectors = 'coarse', pch = 21, bg = spec2rgb(Espectro))
dist.flowers<-coldist(hex.flowers) #Distancia entre dos puntos
head(dist.flowers)


# FLY COLORSPACE #
vis.musca <- vismodel(Espectro, qcatch = 'Qi', visual = 'musca', achro = 'none', relative = TRUE)
cat.flowers <- colspace(vis.musca, space = 'categorical')
head(cat.flowers)
plot(cat.flowers,pch=21,bg=spec2rgb(Espectro))
