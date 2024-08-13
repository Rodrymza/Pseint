funcion correcto=corroborar(user,pc)
	correcto=Falso
	si user=pc
		correcto=Verdadero
	FinSi
FinFuncion

funcion valido=validarnum(num,numuser por referencia)
	largo=longitud(num)
	valido=falso
	si largo=1
		si num<>"1" y num<>"2" y num<>"3" y num<>"4" y num<>"5" y num<>"6" y num<>"7" y num<>"8" y num<>"9" y num<>"0" 
			escribir num  " No es un valor valido. Debes ingresar un valor entre 0 y 9"
			escribir "Presiona una tecla para continuar"
			esperar tecla
			limpiar pantalla
		SiNo
			numuser=ConvertirANumero(num)
			valido=verdadero
		FinSi
	SiNo
		escribir num " No es un valir valido. Debes ingresar un valor entre 0 y 9"
		escribir "Presiona una tecla para continuar"
		esperar tecla
		Limpiar Pantalla
	FinSi

FinFuncion

Algoritmo Adivina_numero
	definir numuser,numpc,cont,lista Como Entero
	definir caractuser como caracter
	dimension lista[5]
	numpc=azar(10)
	validado=falso
	Repetir
		limpiar pantalla
			repetir
			escribir "Te quedan " 5-cont " intentos"
			escribir "Lista de numeros ingresados:"
			para i=1 hasta cont con paso 1 Hacer
				escribir lista[i] " " Sin Saltar
			FinPara
			escribir " "
			escribir "Ingresa el numero que crees que es"
			leer caractuser
			validado=validarnum(caractuser,numuser)
		Hasta Que validado=verdadero
		si corroborar(numuser,numpc)
			cont=5
		SiNo
			si validado=verdadero
				escribir numuser " no es el numero correcto"
				esperar 1000 Milisegundos
				cont=cont+1
				lista[cont]=numuser
			FinSi
		FinSi
	Hasta Que cont=5 o correcto=Verdadero
	si corroborar(numuser,numpc)
		escribir "Ganaste"
	SiNo
		escribir "Perdiste por huevo, el numero era " numpc
	FinSi
FinAlgoritmo
