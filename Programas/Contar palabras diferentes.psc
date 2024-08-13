//Programa para contar palabras diferentes en un frase
// Rodry Ramirez (c)
//Abril 2024
//Version 1.0

Funcion vocalesformateadas=formatearvocales(a)
	a=minusculas(a)
	para i=1 hasta longitud(a) con paso 1 Hacer
		si subcadena(a,i,i)="á"
			formateo=subcadena(a,1,i-1)+"a"+subcadena(a,i+1,longitud(a))
			a=formateo
		SiNo
			formateo=subcadena(a,1,longitud(a))
			a=formateo
		FinSi
		
		si subcadena(a,i,i)="é"
			formateo=subcadena(a,1,i-1)+"e"+subcadena(a,i+1,longitud(a))
			a=formateo
		SiNo
			formateo=subcadena(a,1,longitud(a))
			a=formateo
		FinSi
	
		si subcadena(a,i,i)="í"
			formateo=subcadena(a,1,i-1)+"i"+subcadena(a,i+1,longitud(a))
			a=formateo
		SiNo
			formateo=subcadena(a,1,longitud(a))
			a=formateo
		FinSi
		si subcadena(a,i,i)="ó"
			formateo=subcadena(a,1,i-1)+"o"+subcadena(a,i+1,longitud(a))
			a=formateo
		SiNo
			formateo=subcadena(a,1,longitud(a))
			a=formateo
		FinSi
		si subcadena(a,i,i)="ú" o subcadena(a,i,i)="ü"
			formateo=subcadena(a,1,i-1)+"u"+subcadena(a,i+1,longitud(a))
			a=formateo
		SiNo
			formateo=subcadena(a,1,longitud(a))
			a=formateo
		FinSi
		vocalesformateadas=a
	FinPara
FinFuncion

funcion sololetras=quitarsignos(a)
	a=minusculas(a)
	sololetras=falso
	diccionario="abcdefghijklmnopqrstuvwxyzñ "
	para i=1 hasta longitud(diccionario) con paso 1 Hacer
		si a=subcadena(diccionario,i,i)
			sololetras=Verdadero
			i=longitud(diccionario)+1
			FinSi
	FinPara
FinFuncion

Algoritmo Contar_palabras_diferentes
	definir frase,palabras como caracter
	definir numPalabras como entero
	escribir "Ingresa una frase"
	leer frase
	
	//formateo de vocales con acento o dieresis
	
	frase=formatearvocales(frase)
	
	para i=1 hasta longitud(frase) con paso 1 Hacer
		si quitarsignos(subcadena(frase,i,i))
			frasefinal=concatenar(frasefinal,subcadena(frase,i,i))
		SiNo
			frasefinal=concatenar(frasefinal,"")
		FinSi
	FinPara
	frase=frasefinal
	
	
	//conteo palabras totales para realizar el arreglo
	numPalabras=1
	para i=1 hasta longitud(frase) con paso 1 Hacer
		si subcadena(frase,i,i)=" "
			numPalabras=numPalabras+1
		FinSi
	FinPara
	
	
	dimension palabras[numpalabras]
	//primer palabra
	para i=1 hasta longitud(frase) con paso 1 Hacer
		si subcadena(frase,i,i)=" "
			posfinal=i-1
			i=longitud(frase)+1
		FinSi
	FinPara
	palabras[1]=minusculas(subcadena(frase,1,posfinal))
	frase=concatenar(frase," ")
	//palabra 2 en adelante
	para num=2 hasta numpalabras con paso 1 Hacer
		posini=posfinal+2
		para  i=posini hasta longitud(frase) con paso 1 Hacer
			si	subcadena(frase,i,i)=" "
				posfinal=i-1
				i=longitud(frase)+1
			FinSi
		FinPara
		palabras[num]=minusculas(subcadena(frase,posini,posfinal))
	FinPara
	
	//escribir lista de palabras
	para i=1 hasta numpalabras con paso 1 Hacer
		escribir palabras[i] "." sin saltar
		escribir " "
	FinPara
	//contar palabras distintas

	para i=1 hasta numpalabras con paso 1 Hacer
		repetido=falso
		para j=i-1 hasta 1 con paso-1 Hacer
			si palabras[i]=palabras[j]
				repetido=verdadero
				j=0
			FinSi
		FinPara
		si repetido=Falso
			palabrasDiferentes=palabrasDiferentes+1
		FinSi
	FinPara
	
	escribir "El total de palabras diferentes es " palabrasDiferentes
FinAlgoritmo
