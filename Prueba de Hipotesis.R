#Prueba de hipotesis en R studio

#Prueba de hipotesis una muestra con varp desconocida
zx <- c(56,55,58,59,57,60,61,62,66,59)
#Ho: u = 56.8
#H1: u > 56.8
t.test(zx,mu=56.8,type="one.side",alternative="greater")


#Prueba de hipotesis para la diferencia de medias con varp desconocidas y diferentes
