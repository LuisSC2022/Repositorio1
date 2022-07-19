
# Cambiar el directorio de trabajo
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()

#PREGUNTA 1
nat=35
nag=22
nvi=18
s2at=4.5688
s2ag=5.1627
s2vi=3.1825

v=(s2at/nat+s2vi/nvi)**2/((s2at/nat)**2/(nat+1)+(s2vi/nvi)**2/(nvi+1))-2;v

alfa1 =1- pt((1.18)/sqrt(s2at/nat+s2vi/nvi),v); alfa1
alfa2 =pt((-1.18)/sqrt(s2at/nat+s2vi/nvi),v); alfa2

prob = alfa1 + alfa2
prob



#PREGUNTA 3
#P[X>2] NO SALE
1-pgamma(2,4,2)

#mediana p = 0.5 no sale sino 54%
pgamma(1.935,4,2)

# Q2-Q1
qgamma(0.5,4,2) - qgamma(0.25,4,2) 

# Q3-Q1
qgamma(0.75,4,2) - qgamma(0.25,4,2) 

#PREGUNTA 4
p1=0.25 #lima 
p2=0.35 # arequipa

n1=n2=330

#P[p Arequipa - p lima > 15]

#probabilidad
1-pnorm((15/n1-(p2-p1))/sqrt(p1*(1-p1)/n1+p2*(1-p2)/n2))

pp=(p1*n1+p2*n2)/(n1+n2); pp
1-pnorm((15/n1-(p2-p1))/sqrt(pp*(1-pp)*(1/n1+1/n2)))

#PREGUNTA 5

