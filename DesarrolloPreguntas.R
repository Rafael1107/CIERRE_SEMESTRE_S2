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
Ejemplos=sample(c("Positivo","Negativo","Neutros"),63,replace=TRUE)
set.seed(66)
# Se ejecuta lo anterior mas lo realizado en el ejercicio uno para obtener los numeros de positivos, negativos y neutros
Porcentajes_incluye_neutros<-c(n_negativos/TOTAL,n_positivos/TOTAL,n_neutros/TOTAL)
Porcentajes_no_neutros<-c(n_negativos/(TOTAL-n_neutros),n_positivos/(TOTAL-n_neutros))

#########################EJERCICIO 3 ####################################
##########################################################################
Cartas_Sacadas=sample(c("A",2:10,"J","Q","K"),31,replace=TRUE)

