
### Proyecci?n de espectros de reflectancia en el hex?gono del color de Chittka


#install.packages("pavo")

library(pavo)

# Cargar y organizar datos
# Teniendo en una carpeta todos los archivos de texto (.txt) directamente exportados por el programa del espectrofot?metro (OceanOptics en este caso)

Espectro <- getspec("./chariIND27cerca/",ext="txt",decimal=",",subdir=FALSE, subdir.names=FALSE)

# Si dentro de la carpeta hay m?s carpetas con espectros (Por ejemplo, una carpeta por cada especie) hay que cambiar subdir=TRUE

head(Espectro) #Muestra los primeros datos

dim(Espectro) #Para ver numero filas y columnas del espectro creado


# Negative values. A veces, por problemas en la calibraci?n, aparecen valores de reflectancia negativos que no tienen sentido. Con este peque?o arreglo convertimos el dato m?s bajo en 0

Espectro <- procspec(Espectro, fixneg = "addmin") # Suma a los espectros con valores negativos el valor m?nimo


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
plot(hex.flowers, sectors = 'coarse', pch = 21, bg = spec2rgb(Espectro))
dist.flowers<-coldist(hex.flowers) #Distancia entre dos puntos
head(dist.flowers)


# FLY COLORSPACE #
vis.musca <- vismodel(Espectro, qcatch = 'Qi', visual = 'musca', achro = 'none', relative = TRUE)
cat.flowers <- colspace(vis.musca, space = 'categorical')
head(cat.flowers)
plot(cat.flowers,pch=21,bg=spec2rgb(Espectro))
