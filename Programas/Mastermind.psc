//Juego mastermind
//Vamos a programar el juego "Mastermind", para ello el programa debe "eligir" un número de cuatro cifras (sin cifras repetidas), que será el código que el jugador debe adivinar en la menor cantidad de intentos posibles. Cada intento consiste en una propuesta de un código posible que escribe el jugador, y una respuesta del programa. Las respuestas le darán pistas al jugador para que pueda deducir el código.

//Número de "MUERTOS": Es la cantidad de dígitos que están en el número secreto y en la misma posición,
//	Número de "HERIDOS:" Es la cantidad de dígitos que están en el número secreto pero no en la misma posición.
//	Por ejemplo, si el código que eligió el programa es el 2607, y el jugador propone el 1406, el programa le debe responder un MUERTO (el 0, que está en el código original en el mismo lugar, el tercero), y un HERIDO (el 6, que también está en el código original, pero en la segunda posición, no en el cuarto como fue propuesto).

//Funcion para pasar numero 4 cifras a vector: con subcadenas y pasar a texto y luego a numero nuevamente
//comparar los vectores definidos y los del usuario 2 comparaciones 	si esta el numero en alguno de los vectores escribir heridos
//																		si esta el numero en la misma posicion escribir muerto
// se puede agregar un limite de intentos o un contador para saber cuantos intentos le llevo al usuario llegar a la respuesta correcta

//Rodry (c)
//Version 1.0
//Abril 2024

Funcion repetido=verificar(numero_definido,num)	//funcion para evitar numeros repetidos
	repetido=Falso
	para i=1 hasta 4
		si num=numero_definido[i]
			repetido=Verdadero
		FinSi
	FinPara
FinFuncion

funcion pasar_a_arreglo(num,numero_usuario)
	definir largo Como Entero
	definir num_texto como caracter
	num_texto=convertiratexto(num)
	largo=longitud(num_texto)
	para i=1 hasta largo con paso 1 Hacer
		numero_usuario[i]=convertiranumero(subcadena(num_texto,i,i))
	FinPara
FinFuncion

Funcion escribirpantalla(a)	//Funcion para escribir datos en pantalla
	para i=1 hasta 4 hacer
		escribir a[i]  sin saltar
	FinPara
	escribir " "
FinFuncion

Funcion comprarar_arreglos(a,b)		//a: usuario b:definido
	//muertos
	para i=1 hasta 4 Hacer
		si a[i]=b[i]
			muertos=muertos+1
		FinSi
		//	heridos
	FinPara
	para i=1 hasta 4 con paso 1 Hacer
		para j=1 hasta 4 con paso 1 Hacer
			si a[i]=b[j]
				heridos=heridos+1
			FinSi
		FinPara
	FinPara
	heridos=heridos-muertos
	si muertos=4
		escribir "Ganaste"
	SiNo
		
		escribir heridos " heridos"
		escribir muertos " Muertos"
	FinSi
FinFuncion
funcion ganador=ganar(a,b)
	ganador=falso
	para i=1 hasta 4 Hacer
		si a[i]=b[i]
			cont=cont+1
		FinSi
	FinPara
	si cont=4
		ganador=Verdadero
	FinSi
FinFuncion

Algoritmo Mastermind		//Programa mastermind, averiguar numero 4 cifras
	Definir numero_definido,numero_usuario,num Como Entero
	dimension numero_definido[4]
	dimension numero_usuario[4]
	definir gano Como Logico
	gano=falso
	i=1
	repetir
		num=aleatorio(0,9)
		si verificar(numero_definido,num)=Verdadero
			numero_definido[i]=aleatorio(0,9)
		SiNo
			numero_definido[i]=num
			i=i+1
		FinSi
	hasta que i=4
	escribir "Numero definido"
	escribirpantalla(numero_definido)
	repetir
		escribir "Ingrese un numero de 4 cifras, sin repetir numeros"
		leer num
		pasar_a_arreglo(num,numero_usuario)
		Limpiar Pantalla
		escribirpantalla(numero_usuario)
		comprarar_arreglos(numero_usuario,numero_definido)
		gano=ganar(numero_definido,numero_usuario)
	hasta que gano=verdadero
FinAlgoritmo
