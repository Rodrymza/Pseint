funcion repetido=comprobar(lista,a)
	repetido=falso
	para i=1 hasta 5 Hacer
		si a=lista[i]
			repetido=verdadero
		FinSi
	FinPara
FinFuncion


Algoritmo sin_titulo
	definir num, lista Como Entero
	dimension lista[5]
	cont=0
	repetir
		num=aleatorio(1,5)
		si comprobar(lista,num)=falso
			cont=cont+1
			lista[cont]=num
			
		SiNo
			num=aleatorio(1,5)
		FinSi
	hasta que cont=5
	para i=1 hasta 5 Hacer
		escribir lista[i]
		
	FinPara
FinAlgoritmo

