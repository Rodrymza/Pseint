//funcion para validar numeros ingresados
Funcion resultado=validaranio(a)
	definir diccionario como caracter
//	creacion de diccionario para buscar caracteres validos
	diccionario="1234567890"
	resultado=falso
	para i=1 hasta longitud(a) con paso 1 Hacer
		para j=1 hasta longitud(diccionario) con paso 1 Hacer
			si subcadena(a,i,i)=subcadena(diccionario,j,j)
//				cada vez que encontramos una coincidencia sumamos un valor al contador
				cont=cont+1
//				llevamos j a un valor para saltar del bucle para
				j=longitud(diccionario)+1
			FinSi
		FinPara
	FinPara
//	si el contador es igual a la longitud de la cadena ingresada quiere decir que todos los
//	caracteres son validos por lo que ponemos el resultado en VERDADERO
	si cont=longitud(a)
		resultado=verdadero
	FinSi
FinFuncion

Algoritmo Anio_bisiesto
	definir anio Como Entero
	repetir
		escribir "Ingrese un año"
		leer ingreso
//		validacion de que se ingresaron solo numeros
		si validaranio(ingreso)=Verdadero
			anio=ConvertirANumero(ingreso)
		SiNo
			Limpiar Pantalla
			escribir "--->Ingrese un año valido<---"
		FinSi
	hasta que validaranio(ingreso) y anio>=0 //verifico que se ingrese un numero y que sea mayor o igual a 0
	bisiesto=Falso
//	un año es bisiesto si es divisible por 4 y no por 100 o bien si es divisible por 400
	si (anio%4=0 y no anio%100=0) o anio%400=0
		escribir "El año " anio " es bisiesto"
	SiNo
		escribir "El año " anio " no es bisiesto"
	FinSi
	
FinAlgoritmo
