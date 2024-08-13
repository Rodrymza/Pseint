

Algoritmo Ahorcado
	definir palabra,letra,palab como caracter
	definir contiene Como Logico
	definir largo,i,cont,contar Como Entero
	contiene=Falso
	cont=1
	escribir "Ingresa una palabra"
	leer palabra
	limpiar pantalla
	largo=longitud(palabra)
	dimension palab[largo]
	escribir oculta
	para i=1 hasta largo Hacer
		palab[i]="*"
	FinPara
	cont=8
	repetir
		limpiar pantalla
		escribir "Te quedan " cont " intentos"
		para i=1 hasta largo
			escribir palab[i] sin saltar
		FinPara
		escribir " "
		Repetir
			escribir "Ingrese la letra a buscar"
			leer letra
			si longitud(letra)<>1 Entonces
				escribir "Ingrese solo una letra"
			FinSi
		Hasta Que longitud(letra)=1
		para i=1 hasta largo Hacer
			si subcadena(palabra,i,i)=letra
				palab[i]=subcadena(palabra,i,i)
			FinSi
			limpiar pantalla
		FinPara
		para i=1 hasta largo Hacer
			si palab[i]<>"*"
				contar=contar+1
			FinSi
			si contar=largo
				adivino=Verdadero
			FinSi
		FinPara
		contar=0
		si contar=largo
			adivino=Verdadero
		FinSi
		cont=cont-1
		
	hasta que cont=0 o adivino=verdadero
	si adivino=Verdadero
		escribir "Ganaste, la palabra era " palabra
	SiNo
		escribir "Te quedaste sin intentos, la palabra era " palabra
		
	FinSi
FinAlgoritmo
