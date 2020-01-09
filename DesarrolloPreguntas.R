DesarrolloPreguntas.R
#########################EJERCICIO 1 ####################################
##########################################################################
Ejemplos=sample(c("Positivo","Negativo","Neutros"),100,replace=TRUE)
#################Contando los Positivos################
n_positivos<-0
for (i in 1:length(Ejemplos)){
  if("Positivo"==Ejemplos[i]){n_positivos<-n_positivos+1}
}
####################Contando los Negativos##############
n_negativos<-0
for (i in 1:length(Ejemplos)){
  if("Negativo"==Ejemplos[i]){n_negativos<-n_negativos+1}
}
####################Contando los Neutros#################
n_neutros<-0
for (i in 1:length(Ejemplos)){
  if("Neutros"==Ejemplos[i]){n_neutros<-n_neutros+1}
}
################Comprobando la sumatoria igual a 100################
TOTAL<-n_negativos+n_positivos+n_neutros

#########################EJERCICIO 2 ####################################
##########################################################################
Ejemplos=sample(c("Positivo","Negativo","Neutros"),10,replace=TRUE)
set.seed(10)
#########################EJERCICIO 3 ####################################
##########################################################################
Ejemplos=sample(c("Positivo","Negativo","Neutros"),10,replace=TRUE)
set.seed(66)
# Se ejecuta lo anterior mas lo realizado en el ejercicio uno para obtener los numeros de positivos, negativos y neutros
Porcentajes_incluye_neutros<-c(n_negativos/TOTAL,n_positivos/TOTAL,n_neutros/TOTAL)
Porcentajes_no_neutros<-c(n_negativos/(TOTAL-n_neutros),n_positivos/(TOTAL-n_neutros))

#########################EJERCICIO 4 y 5 ####################################
##########################################################################
Cartas_Sacadas=sample(c("A",2:10,"J","Q","K"),31,replace=TRUE)
set.seed(31)
Cuenta<-0
for (i in 1:length(Cartas_Sacadas)){
  if(Cartas_Sacadas[i]==2|Cartas_Sacadas[i]==3|Cartas_Sacadas[i]==4|Cartas_Sacadas[i]==5|Cartas_Sacadas[i]==6) {
    Cuenta<-Cuenta+1 } else if (Cartas_Sacadas[i]=="A"|Cartas_Sacadas[i]=="J"|Cartas_Sacadas[i]=="Q"|Cartas_Sacadas[i]=="K"|Cartas_Sacadas[i]==10){
      Cuenta<-Cuenta-1} else if (Cartas_Sacadas[i]==7|Cartas_Sacadas[i]==8|Cartas_Sacadas[i]==9){
        Cuenta<-Cuenta+0
      }
}
# Ahora lo realice con 2 ford de manera variable.
mas1<-c(2:6)
menos1<-c("A","J","Q","K",10)
neutros<-c(7:9)
cuenta2<-0
variable<-mas1
for (i in 1:length(Cartas_Sacadas)){ for (n in 1:length(variable)){
  if(Cartas_Sacadas[i]==mas1[n]){cuenta2<-cuenta2+1}}
  variable<-menos1
  for(n in 1:length(variable)){
    if(Cartas_Sacadas[i]==menos1[n]){cuenta2<-cuenta2-1}
  }
}
#########################EJERCICIO 6 ####################################
##########################################################################
setwd("C:\Users\Rafae\Documents\CIERRE_SEMESTRE_S2")
#SE NECESITAN LOS PAQUETES 

library(tm) 
library(wordcloud)
library(ggplot2)
library(reshape2)
#Reconocimiento de Archivos
textos=VCorpus(DirSource("Textos",encoding="UTF-8"),readerControl =list(language="spa"))
inspect(textos)
writeLines(as.character(textos[[1]]))
writeLines(as.character(textos[[2]]))


#Colocando en formato de tabla
tdm<-TermDocumentMatrix(textos,
                        control=list(stopwords=T,
                        removePunctuation=T,
                        removeNumbers=T,
                        steming=T))

matrix_tdm<-melt(as.matrix(tdm),value.name="Count")
head(matrix_tdm)

##################################### METODO2 ###############################################
path = "C:/Users/Rafae/Documents/CIERRE_SEMESTRE_S2"
setwd("C:/Users/Rafae/Documents/CIERRE_SEMESTRE_S2")
dir = DirSource(paste(path,"pos/",sep=""), encoding = "UTF-8")
corpus = Corpus(dir)
