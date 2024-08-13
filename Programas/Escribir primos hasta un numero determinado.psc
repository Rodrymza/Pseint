funcion primo=es_primo(a)
	primo=verdadero
	para i=2 hasta rc(a)
		si a%i=0
			primo=falso
		FinSi
	FinPara
FinFuncion

Algoritmo escribir_primos
	definir num como entero
	escribir "Ingrese hasta que numero escribir los numeros primos"
	leer num
	escribir "2 " sin saltar
	para i=2 hasta num con paso 1 hacer
		si es_primo(i)
			escribir i " " Sin Saltar
		FinSi
	FinPara
FinAlgoritmo
