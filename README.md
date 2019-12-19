# CIERRE_SEMESTRE_S2
#####Pregunta 1######
Primero se debe crear una variable donde se sumen los numeros ya sean positivos,negativos o neutros, y posteriormente utilizar el siguiente for para realizar el conteo y sumatoria. (Este esta hecho con los numeros positivos)

for (i in 1:length(Ejemplos)){
  if("Positivo"==Ejemplos[i]){n_positivos<-n_positivos+1}
}
Para asegurarse hay que utilizar una variable TOTAL que sera la suma de los tres variables de positivos, negativos y neutros que debe dar 100.

#######Pregunta 2#####

set.seed parece estar ordenando los datos de una manera no clara, lo unico que logro visualizar es que la gran mayoria que se repite los ordena al final del conjunto. internet  por otro lado indica que asegura los numeros aleatorios para reproducciones futuras.

############Pregunta 3#################

Realice los pasos anteriores utilizando el set.seed(66) y lo compare con el calculo de los porcentajes sin la utilizacion del set.seed, dandome exactamente los mismos  porcentajes, esto me hace pensar que set.seed solo ordena los datos aleatoreos de manera que sean mas faciles de procesar.
Por otro lado la consideracion o no de los neutros tiene un impacto en la visualizacion de la diferencia entre las opiniones extremas, si se utiliza los neutrales la diferencia entre Positivo y Negativo es de 9%, si los neutros no son considerados la diferencia es de 12% aproximadamente.

##########Pregunta 4##################

