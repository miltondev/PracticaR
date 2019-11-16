require("Ryacas")

#Datos del Ejercicio

#La empresa de autobús "A" ofrece el servicio de transporte urbano en régimen de monopolio
#gracias a una concesión pública. A consecuencia de la heterogeneidad de los usuarios, la demanda
#de este servicio puede descomponerse en dos segmentos totalmente separados y cuyas curvas
#de demanda son:

#Demanda 1 = P=100-2q
#Demanda 2 = P=150-5q

#La función de costos totales es la misma para ambas funciones de demanda y es igual a:
#Costos Totales: Cq = 60+50q

#a) Obtener el precio y la cantidad de equilibrio del monopolista en cada segmento y el beneficio
#individual y total.

#b) ¿Qué segmento pagará un mayor precio? ¿Por qué? (Para ello lea en el folleto el apartado
#   sobre discriminación de precios)
#c) Obtenga la pérdida de bienestar individual y total ocasionada por el monopolista.
#Nota: Para la realización de este tipo de ejercicios es recomendable hacer los gráficos de ambos
#segmentos de demanda por separado.





#Encontrando la cantidad Demandada se a susitituido la variable q por x

cmd <- "Solve(150-5*x, x)"
Cdm = cmd %>% yac_str()
liz<-nchar(Cdm) -1
as.numeric (substr(Cdm, 5, liz))

# Encontrando Costo marginal
dCmg<-expression(60+50*q)
dCmg<-D(dCmg,'q') 
dCmg


# Encontrando el ingreso Marginal

cmd <- "{100,-2*q}*q"
cmd %>% yac_str()


cmd <- "Solve(100*x-2*x^2==50*x,x)"
 cmd %>% yac_str()
Cdm
liz<-nchar(Cdm) -1
as.numeric (substr(Cdm, 5, liz))


# Evaluar un Numero dentro de la una variable
cmd <- "150-5*x"
cmd %>% yac_str()
e <- cmd %>% yac_expr()
eval(e, list(x = 1.5))