# Podemos decir que un estad�stico corresponde a un estimador puntual
# de un par�metro. El estimador tiende a mejorar a medida que aumentamos el tama�o de la muestra, por
# efecto de la ley de los grandes n�meros.

#Error estandar
# El error est�ndar, denotado usualmente por SE, corresponde a la desviaci�n
# est�ndar de la distribuci�n de un estimador muestral de un par�metro.

#Intervalo de confianza -> donde podria encontrarse un determinado estimador
# media +- valor_z*error_estandar
# "se tiene x% de certeza de que el par�metro de la poblaci�n
# se encuentra entre..."


# Pruebas de Hipotesis ----------------------------------------------------

#El que no se logre rechazar H0 no significa aceptarla como verdadera o como correcta sin m�s

#Error tipo 1: Rechazar H0 cuando es verdadera
#Error tipo 2: Rechazar Ha cuando es verdadera 

# El intervalo de confianza es de mucha ayuda para decidir si rechazar o no H0. No obstante, no aporta
# informaci�n directa acerca de cu�n fuerte es la evidencia para la decisi�n tomada.

# Es posible obtener probabilidades casi exactas para cualquier percentil haciendo uso del valor p, que se define como
# "la probabilidad de observar datos al menos tan favorables como la muestra actual para
# la hip�tesis alternativa, si la hip�tesis nula es verdadera"

# Estadistico de prueba : z = (estimador puntual-valor nulo)/error estandar

# Se calcula el valor p
# p_1 <- pnorm (Z , lower.tail = TRUE )

# El valor p se puede comparar directamente con el nivel de significaci�n
# alfa, y si p es menor que el nivel de significaci�n se considera evidencia suficiente para rechazar la hip�tesis
# nula en favor de la hip�tesis alternativa.

# Valores mas peque�os de alfa aumentan la probabilidad de cometer un error de tipo 2.

# Pruebas de Inferencia con medias ----------------------------------------

# Prueba Z
# Se deben verificar 3 condiciones para poder usarla 
# 1- La muestra debe tener al menos 30 observaciones. Si la muestra tiene menos de 30 observaciones, se
#    debe conocer la varianza de la poblaci�n
# 2- Las observaciones deben ser independientes, es decir que la elecci�n de una observaci�n para la muestra
#    no influye en la selecci�n de las otras.
# 3- La poblaci�n de donde se obtuvo la muestra sigue aproximadamente una distribuci�n normal. (Grafico q-q)

# Esta prueba resulta adecuada si queremos asegurar o descartar que la media de la poblaci�n tiene un
# cierto valor hipot�tico

# Pasos: 
# 1 - Verificar condiciones
# 2 - Calcular estimador Z
# 3 - Calcular valor p
# 4 - Comparar con alfa
# 5 - Concluir

#Se puede hacer la prueba de forma automatica
# z.test ( media , mu = valor_nulo , alternative = "two. sided ",
#            43 stdev = desv_est , conf.level = 1 - alfa )

#Prueba t de student para una muestra.

# En la pr�ctica, rara vez podemos conocer la desviaci�n est�ndar de la poblaci�n y a menudo nos encontraremos
# con muestras peque�as, por lo que la prueba Z no es muy utilizada.

# Para poder usar la prueba se deben verificar 2 condiciones
# 1- Las observaciones son independientes entre s�
# 2- Las observaciones provienen de una distribuci�n cercana a la normal

# Pasos

# 1- Verificar condiciones

# 2- Estimador T
# T = (media-valor nulo)/error estandar

# 3- Intervalo
# t critico = qt( alfa , df = grados_libertad , lower . tail = FALSE )
# media +- tcritico*error estandar

# 4- Valor p
# pt(t, df = grados_libertad , lower . tail = TRUE )


# Funcion que ejecuta automaticamente el test.
# t.test(x,alternative, mu, conf.level)


# Prueba t para dos muestras pareadas 

# Para esta prueba, supongamos ahora que el ingeniero en Inform�tica del ejemplo anterior tiene dos algoritmos
# diferentes (A y B) que, en teor�a, deber�an tardar lo mismo en resolver un problema. Para ello, prob� ambos
# algoritmos con 35 instancias del problema (elegidas al azar) de igual tama�o y registr� los tiempos de
# ejecuci�n (en milisegundos) de ambos algoritmos bajo iguales condiciones para cada una de ellas, adem�s de
# calcular la diferencia en los tiempos de ejecuci�n

# Pasos:
# 1- Plantear hipotesis
# 2- Verificar condiciones -> Se comprueba normalidad con  shapiro.test ( diferencia )
# 3- Calcular estimador
# 4- Calcular valor p
# 5- Compara valor p con alfa
# 6- Concluir

#Funcion que ejecuta automaticamente el test.
#prueba _1 <- t. test ( diferencia ,alternative = " two. sided ",mu = valor _ nulo ,conf . level = 1 - alfa )

# Prueba t para dos muestras independientes

# En este caso, la prueba t se usa para comparar las medias de dos poblaciones en que las observaciones con
# que se cuenta no tienen relaci�n con ninguna de las otras observaciones, ni influyen en su selecci�n, ni en la
# misma ni en la otra muestra. En este caso la inferencia se hace sobre la diferencia de las medias: u1 ??? u2 = d0,
# donde d0 es un valor hipot�tico fijo para la diferencia.

# Se deben verificar 2 condiciones 

# 1- Cada muestra cumple las condiciones para usar la distribuci�n t.
# 2-  Las muestras son independientes entre s�.

# Pasos
# 1-Plantear hipotesis
# 2- Verificar condiciones -> Para verificar supuesto de normalidad usar shapiro . test (muestra) para cada muestra.
# 3- Calcular estimador T = ((media1-media2)-d0)/SE(media1-media2)
# 4- Calcular valor p
# 5- Comparar valor p con alfa
# 6- Concluir 

#Funcion que realiza automaticamente el test.
# prueba <- t. test (x = vacuna _A ,
#                      y = vacuna _B ,
#                      paired = FALSE ,
#                      alternative = " greater ",
#                      mu = 0 ,
#                      conf.level = 1 - alfa )



