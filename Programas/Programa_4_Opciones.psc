//Programa de 4 opciones (interes simple, promedio, plazo fijo y salida
//Rodrigo Ramirez (c)
//Version 1.0
//Abril 2024


//Funcion para redondear a 2 cifras
funcion resultado=redondearcifras(a)
	dato=convertiratexto(a)			//Convertimos el valor a texto para poder manejarlo con funciones para cadenas
	para b=1 hasta longitud(dato) con paso 1 Hacer
		si subcadena(dato,b,b)="."		//Verifico que el numero sea decimal con "."
			b=longitud(dato)+1
			para i=1 hasta longitud(dato) con paso 1 Hacer
				si subcadena(dato,i,i)="."
					posicion=i
					i=longitud(dato)+1
				FinSi
				si convertiranumero(subcadena(dato,posicion+3,posicion+3))>=5		//Si el tercer digito es mayor o igual a 5 sumamos un 1 a la segunda cifra
					posicion2=convertiranumero(subcadena(dato,posicion+2,posicion+2))+1
				SiNo
					posicion2=convertiranumero(subcadena(dato,posicion+2,posicion+2))
				FinSi
				
			FinPara
			resultado=convertiranumero(concatenar(subcadena(dato,1,posicion+1),convertiratexto(posicion2)))
		SiNo	//Si no tiene decimal dejamos el numero sin cambios
		resultado=a	
		FinSi
	FinPara
FinFuncion

	

//Funcion para validar ingreso de numeros para calculos matematicos
funcion resultado=numerocalculo(a)
	definir diccionario Como caracter
	definir cont como entero
	resultado=falso
	diccionario="1234567890."
		para i=1 hasta longitud(a) con paso 1 Hacer
		para j=1 hasta longitud(diccionario)
			si subcadena(a,i,i)=subcadena(diccionario,j,j)
				j=longitud(diccionario)+1
				cont=cont+1
			FinSi
		FinPara
	FinPara
	
	si cont=longitud(a)
		resultado=verdadero
	FinSi
FinFuncion

//funcion para validar la opcion ingresada por el usuario
funcion numero_valido=validarnumero(a)
	definir diccionario Como caracter
	numero_valido=falso
	diccionario="1234567890"
	si longitud(a)=1
		para i=1 hasta longitud(diccionario)
			si a=subcadena(diccionario,i,i)
				si convertiranumero(a)<=4 y convertiranumero(a)>=1
					numero_valido=Verdadero
					i=longitud(diccionario)+1
				FinSi
			FinSi
		FinPara
	FinSi
FinFuncion

//Funcion para validar dias donde solo se pueden colocar numeros del 0 al 9, Idem a la funcion numerocalculo pero sin el "." decimal
Funcion resultado=validardias(a)
	definir diccionario Como caracter
	definir cont como entero
	resultado=falso
	diccionario="1234567890"
	para i=1 hasta longitud(a) con paso 1 Hacer
		para j=1 hasta longitud(diccionario)
			si subcadena(a,i,i)=subcadena(diccionario,j,j)
				j=longitud(diccionario)+1
				cont=cont+1
			FinSi
		FinPara
	FinPara
	
	si cont=longitud(a)
		resultado=verdadero
	FinSi
FinFuncion

//Funcion para plazo fijo
funcion plazoFijo
	definir tasaAnual,tasaDiria,capital,dias,interesGenerado como real
	//Validaciones de datos ingresados
	repetir 
		escribir "Ingrese el capital a invertir"
	 	leer ingreso
		si numerocalculo(ingreso)=Verdadero
			capital=convertiranumero(ingreso)
		SiNo
			Limpiar Pantalla
			escribir "***Ingrese un valor numerico valido***"
		FinSi
	hasta que numerocalculo(ingreso)
	limpiar pantalla
	repetir
		
		escribir "Capital invertido: $" capital
		escribir "Ingrese la tasa anual"
	 	leer ingreso
		si numerocalculo(ingreso)=Verdadero
			tasaAnual=convertiranumero(ingreso)
		SiNo
			Limpiar Pantalla
			escribir "***Ingrese un valor numerico valido***"
			escribir " "
		FinSi
	hasta que numerocalculo(ingreso)
	limpiar pantalla
	repetir 
		escribir "Capital ingresado $" capital
		escribir "Tasa anual " tasaAnual "%"
		escribir "Ingrese los dias que colocara el plazo fijo"
	 	leer ingreso
		si validardias(ingreso)=Verdadero
			dias=convertiranumero(ingreso)
		SiNo
			Limpiar Pantalla
			escribir "***Ingrese un numero de dias valido**"
			escribir " "
		FinSi
	hasta que validardias(ingreso)
	tasaDiria=tasaAnual/365
	interesGenerado=capital*tasaDiria*dias/100
	limpiar pantalla
	escribir "Capital invertido: $" capital
	escribir "Tasa anual: " tasaAnual "%"
	escribir "Plazo: " dias " dias"
	escribir "El dinero generado será de $" redondearcifras(interesGenerado)
	escribir "El capital final del plazo fijo sera de $" redondearcifras(interesGenerado)+capital
	escribir ""
	escribir "Presione una tecla para volver al programa"
	esperar tecla
	limpiar pantalla
FinFuncion

//Funcion para promedio
Funcion Promedio
	definir num,suma,cont Como real
	definir valornota como logico
	valornota=falso
	cont=1
	Repetir
		escribir "***Para dejar de Sumar notas ingrese 0***"
		escribir "Ingrese 1° Nota"
		leer ingreso
		si numerocalculo(ingreso)
			num=ConvertirANumero(ingreso)
			si num<=10 y num>=0
				valornota=verdadero
			SiNo
				Limpiar Pantalla
				escribir "***Ingrese un valor entre 1 y 10"
			FinSi
		SiNo
			limpiar pantalla
			escribir "***Ingrese un valor numerico***"
		FinSi
	hasta que numerocalculo(ingreso)=verdadero y valornota=verdadero
	valornota=falso
	mientras num<>0 y cont<10
		Limpiar Pantalla
		suma=suma+num
		prom=suma/cont
		cont=cont+1
		repetir
			escribir "El promedio es de " redondearcifras(prom)
			escribir "Cantidad de notas ingresadas: " cont-1
			escribir " "
			escribir "***Para dejar de sumar numeros ingrese 0***"
			escribir "Ingrese " cont "° Nota a sumar"
			leer ingreso
			si numerocalculo(ingreso)
				num=ConvertirANumero(ingreso)
				si num<=10 y num>=0
					valornota=verdadero
					Limpiar Pantalla
				SiNo
					Limpiar Pantalla
					escribir "***Ingrese un valor entre 1 y 10"
				FinSi
			SiNo
				Limpiar Pantalla
				escribir "***Ingrese un valor numerico***"
				escribir " "
			FinSi
		Hasta Que numerocalculo(ingreso) y valornota=verdadero
	finmientras
	Limpiar Pantalla
	// si ingresamos un 0 para terminar de sumar notas no debemos sumarlo como nota, entonces restamos uno al contador
	si num=0
		cont=cont-1
	FinSi
	escribir "Cantidad de notas ingresadas: " cont
	escribir "El promedio es de " redondearcifras(prom)
	escribir " "
	escribir "Presione una tecla para volver al programa principal"
	esperar tecla
	limpiar pantalla
FinFuncion

//Funcion para interes simple
funcion InteresSimple
	definir capital,interes,resultado Como Real
	repetir
		escribir "Ingrese el capital inicial"
		leer ingreso
		si numerocalculo(ingreso)
			limpiar pantalla
			capital=ConvertirANumero(ingreso)
		SiNo
			limpiar pantalla
			escribir "***Ingrese un valor numerico***"
			escribir " "
		FinSi
	hasta que numerocalculo(ingreso)
	repetir
		escribir "Capital ingresado $" capital 
		escribir "Ingrese el interés"
		leer ingreso
		si numerocalculo(ingreso)
			interes=ConvertirANumero(ingreso)
		SiNo
			limpiar pantalla
			escribir "***Ingrese un valor numerico***"
			escribir " "
		FinSi
	hasta que numerocalculo(ingreso)
	resultado=capital+capital*interes/100
	escribir "Capital Inicial: $" capital 
	escribir "Interes: " interes "%"
	escribir "El capital final es de: $" redondearcifras(resultado)
	escribir " "
	escribir "Presione una tecla para volver al programa principal"
	esperar tecla
	limpiar pantalla
FinFuncion

Algoritmo Programa_4_Opciones
	definir opc Como Entero
	definir ingreso como caracter
	escribir "Hola!"
	repetir
		repetir
			escribir "Ingrese la opcion deseada"
			escribir " "
			escribir "1 Calcular interes simple"
			escribir "2 Calcular un promedio"
			escribir "3 Calcular un plazo fijo"
			escribir "4 Salir"
			
			leer ingreso
			si validarnumero(ingreso)
				opc=convertiranumero(ingreso)
			SiNo
				limpiar pantalla
				escribir "***Ingrese una opcion valida***"
			FinSi
		hasta que validarnumero(ingreso)
		
		segun opc Hacer
			1:Limpiar Pantalla
				escribir "Calculo de interés simple"
				InteresSimple
			2:Limpiar Pantalla
				escribir "Calculo de promedio"
				Promedio
			3:Limpiar Pantalla
				escribir "Calculo de plazo fijo"
				plazoFijo
			4:	Limpiar Pantalla
				escribir "Gracias por utilizar el programa"
		FinSegun
	hasta que opc=4
	escribir "Final de programa"
FinAlgoritmo
