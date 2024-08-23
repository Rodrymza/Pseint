// Funcion para mover la figura
Funcion mostrarPantalla(entrada,avion por referencia)
	escribir avion
	si entrada="d"
		avion=" "+avion
	FinSi
	si entrada="a"
		si subcadena(avion,1,1)=" "
			avion=subcadena(avion,2,longitud(avion))
		finsi
	FinSi
	Limpiar Pantalla
	escribir  " "
	escribir " "
	escribir avion
	escribir  " "
	escribir " "
FinFuncion


//Algoritmo principal
Algoritmo Juego
	definir avion,entrada como caracter
	avion="---< O >---"
	escribir  " "
	escribir " "
	escribir avion
	escribir  " "
	escribir " "
	//Teclas funcionales: A movimiento a la izq, D movimiento a la der y X salir
	repetir 
		
		leer entrada
		segun entrada Hacer
			"a":
				mostrarPantalla(entrada,avion)
				
			"d":
				mostrarPantalla(entrada,avion)
		FinSegun
	Hasta Que entrada="x"
	Limpiar Pantalla
	escribir ":("
	escribir "Saliste del juego"
FinAlgoritmo
