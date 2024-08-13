funcion repetido=comprobar(lista,a,dimen)
	repetido=falso
	para i=1 hasta dimen Hacer
		si a=lista[i]
			repetido=verdadero
		FinSi
	FinPara
FinFuncion

funcion numeros_sorteados(lista,cont)
	escribir "Numeros sorteados: "
	para i=1 hasta cont con paso 1 Hacer
		escribir "(" lista[i] ") " sin saltar
	FinPara
	escribir " "
FinFuncion

Algoritmo Bingo_bolillero
	definir num, lista,dimen Como Entero
	escribir "Ingrese el limite de numeros"
	leer dimen
	dimension lista[dimen]
	cont=0
	repetir
		num=aleatorio(1,dimen)
		si comprobar(lista,num,dimen)=falso
			cont=cont+1
			lista[cont]=num
			
		SiNo
			num=aleatorio(1,dimen)
		FinSi
	hasta que cont=dimen
	para i=1 hasta dimen Hacer
		escribir lista[i]
		limpiar pantalla
		escribir "."
		esperar 1 Segundos
		Limpiar Pantalla
		escribir ".."
		esperar 1 Segundos
		limpiar pantalla
		Escribir "..."
		esperar 1 Segundos
		Limpiar Pantalla
		escribir "(" lista[i] ")"
		escribir " "
		numeros_sorteados(lista,sorteos)
		sorteos=sorteos+1
		escribir "Quedan " dimen-sorteos " numeros"
		escribir "Presione una tecla para un nuevo sorteo"
		esperar Tecla
	FinPara
FinAlgoritmo

