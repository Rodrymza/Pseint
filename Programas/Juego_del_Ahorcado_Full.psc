//  Programa Juego del Ahorcado Full
// (c) Ricardo Ponce
// https://profesorponce.blogspot.com/
// Version 2024
//
// En este programa le muestro como se puede armar un juego completo
// del ahorcado que da 14 posibilidades pra adivinar las letras
//
// CONSIGNA 1: para jugar al ahorcado, esta version tiene un
// diccionario de 20 palabras. Al iniciar el juego, el programa
// debera usa la funcion azar(20+1) y la estructura SEGUN 
// HACER para seleccionar entre las 20 palabras disponibles
//
// CONSIGNA 2: Esta version tiene una funcion dibujar que
// contabiliza el total de intentos de adivinar la palabra
// y va dibujando paulatinamente el clasido dibujito del
// ahorcado en la pantalla. El dibujo consta de un total
// de 14 lineas y se dibuja linea por linea
//     _O_
//     I
//   / \
//
// Piense en las mejoras que se podr?an implementar y modifiquelo
// para mejorarlo
//
Funcion Dibujar (intentos)
	// esta funcion dibuja linea por linea las 14 lineas que componen
	// el clasico dibujito del ahorcado
	
	// escribir "Intentos=", intentos (usado en dla depuracion)
	
	segun intentos Hacer
		0:
			// no hace nada. al inicio del juego el intento es cero y
			// el programa no dibuja nada en pantalla porque se dibuja 
			// a partir del primer intento
		1:
			escribir "MMMMMMMMMMMMMMMM"
		2:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
		3:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
		4:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
		5:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
		6:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
		7:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
		8:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
			escribir "M           M  M  M" 
		9:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
			escribir "M           M  M  M" 
			escribir "M              M"
		10:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
			escribir "M           M  M  M" 
			escribir "M              M"
			escribir "M            M   M"
		11:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
			escribir "M           M  M  M" 
			escribir "M              M"
			escribir "M            M   M"
			escribir "M           M     M"
		12:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
			escribir "M           M  M  M" 
			escribir "M              M"
			escribir "M            M   M"
			escribir "M           M     M"
			escribir "M"
		13:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
			escribir "M           M  M  M" 
			escribir "M              M"
			escribir "M            M   M"
			escribir "M           M     M"
		    escribir "M"
			escribir "MMMMMMMMMMMMMMMMMMMMMMM (cuidado!)"
		de otro modo:
			escribir "MMMMMMMMMMMMMMMM"
			escribir "M              M"
			escribir "M             MMM"
			escribir "M            MMMMM"
			escribir "M             MMM" 
			escribir "M              M"
			escribir "M            M M M"
			escribir "M           M  M  M" 
			escribir "M              M"
			escribir "M            M   M"
			escribir "M           M     M"
		    escribir "M"
			escribir "MMMMMMMMMMMMMMMMMMMMMMM (cuidado!)"
			escribir "MMMMMMMMMMMMMMMMMMMMMMM PERDISTE!"
	FinSegun
	
	escribir "" // SEPARACION
	
FinFuncion


Algoritmo Juego_del_Ahorcado_Full
	
	
	definir var_palabra_para_adivinar Como Caracter // palabra que el jugador debe adivinar
	// en la primer version se ingresa por teclado, pero hay que conseguir mediante la 
	// consigna 1 que sea el propio programa el que genere al azar la palabra a adivinar
	// de un total de 20 palabras posibles
	
	definir var_subcadena_para_mostrar como cadena // cadena de asteriscos que el programa
	// muestra en pantalla durante el juego (tiene que tener la cantidad de asteriscos que
	// que corresponde a la cantidad de letras de la palabra que se tiene que adivinar
	
	definir var_continuar Como cadena // guarda la respuesta del usuario a si quiere 
	// vover a jugar o no
	
	definir var_palabra_en_juego como cadena // guarda la cadena de datos adivinados por el 
	// usuario mientras est? jugando. Las letras adivinadas van apareciendo a medida que las adivina
	
	definir var_tamanio_de_palabra como entero //guarda el tama?o en cantidad de letras de la palabra
	// que se debe adivinar
	
	definir var_total_de_intentos como entero  //total de intentos permitidos para adivinar las letras
	// corresponde al tama?o en letras de la palabra que debe adivinarse
	
	definir aux como entero //variable auxiliar que se usa en un bucle de repeticion
	
	definir var_intentos_equivocados como entero // variable usada para dibujar en pantalla
	// linea por linea el dibujito clasico del ahorcado. En total son 14 lineas
	
	// ----------------
	// Inicio del juego
	// ----------------
	repetir
		
		// pantalla de presentaci?n inicial
		limpiar pantalla 
		escribir "AHORCADO. Versi?n 1.00"
		escribir "(c) 2024 por Ricardo Ponce"
		escribir "https://profesorponce.blogspot.com"
		escribir ""
		escribir "Este es un programa did?ctico escrito en PSeint"
		escribir "Piense en las mejoras que se podr?an implementar y modif?quelo"
		escribir "para mejorarlo. Solo asi mejorar? como programador."
		escribir ""
		escribir "PRESIONE CUALQUIER TECLA PARA EMPEZAR."
		ESPERAR Tecla
		
		limpiar pantalla 
		escribir "AHORCADO. Versi?n 1.00"
		escribir "(c) 2024 por Ricardo Ponce"
		escribir "https://profesorponce.blogspot.com"
		escribir ""
		
		// escribir "INGRESE UNA PALABRA PARA ADIVINAR"
		// leer var_palabra_para_adivinar
		// en esta version el programa trabaja con un diccionario de 20 palabras
		
		segun azar(20+1) Hacer		// generaci?n de un numero del diccionaro al azar
			1: var_palabra_para_adivinar= "terapeuta"
			2: var_palabra_para_adivinar= "algoritmo"
			3: var_palabra_para_adivinar= "argentina"
			4: var_palabra_para_adivinar= "teorema"
			5:var_palabra_para_adivinar= "pitagoras"
			6:var_palabra_para_adivinar= "matematicas"
			7:var_palabra_para_adivinar= "fluminense"
			8:var_palabra_para_adivinar= "organigrama"
			9:var_palabra_para_adivinar= "zapallo"
			10:var_palabra_para_adivinar= "maradona"
			11:var_palabra_para_adivinar= "biblioteca"
			12:var_palabra_para_adivinar= "florianopolis"
			13:var_palabra_para_adivinar= "considerar"
			14:var_palabra_para_adivinar= "misionero"
			15:var_palabra_para_adivinar= "alpinista"
			16:var_palabra_para_adivinar= "arquitecto"
			17:var_palabra_para_adivinar= "cachemira"
			18:var_palabra_para_adivinar= "canada"
			19:var_palabra_para_adivinar= "protesis"
			De Otro Modo:
				var_palabra_para_adivinar= "inmaduro"
		FinSegun
		
		var_palabra_para_adivinar = minusculas(var_palabra_para_adivinar)
		var_tamanio_de_palabra=longitud(var_palabra_para_adivinar)
		
		var_subcadena_para_mostrar = ""
		
		Para aux=1 Hasta var_tamanio_de_palabra Con Paso 1 Hacer
			Si subcadena(var_palabra_para_adivinar,aux,aux) <> " " Entonces
				var_subcadena_para_mostrar=Concatenar(var_subcadena_para_mostrar,"*")
			Fin Si
		Fin Para
		
	    limpiar pantalla
		
        escribir "Bienvenido al ahorcado."
		escribir "Ingrese letras tratando de adivinar la siguiente palabra: ", var_subcadena_para_mostrar
		escribir ""
		
		// se usa el numero 14 porque 14 son las lineas que componene el clasico
		// dibujito del ahorcado. En la versin anterior se usaba el tama?o de la palabra
		var_total_de_intentos =  14 // var_tamanio_de_palabra
		
		var_palabra_en_juego=var_subcadena_para_mostrar
		adivinados=0
		var_intentos_equivocados = 0
		
		Repetir
			
			var_letra_ingresada=""
			
			limpiar pantalla
			Dibujar(var_intentos_equivocados) // dibujo del ahorcadito
			
			escribir "Palabra en juego:",var_palabra_en_juego
			Escribir "Intentos: ",var_total_de_intentos
			escribir "Letras adivinadas=",adivinados
			escribir "Ingrese una letra"
		    leer var_letra_ingresada
			
			var_total_de_intentos=var_total_de_intentos-1
			
			//var_palabra_en_juego="" eliminado
			Para aux=1 Hasta var_tamanio_de_palabra Con Paso 1 Hacer
				
				Si var_letra_ingresada=subcadena(var_palabra_para_adivinar,aux,aux) Entonces
					// escribir ">>",subcadena(var_subcadena_para_mostrar,1,aux-1)
					// escribir ">>",var_letra_ingresada
					// escribir ">>",subcadena(var_subcadena_para_mostrar,aux+1,longitud(var_subcadena_para_mostrar))
					var_palabra_en_juego = subcadena(var_subcadena_para_mostrar,1,aux-1) + var_letra_ingresada + subcadena(var_subcadena_para_mostrar,aux+1,longitud(var_subcadena_para_mostrar))
					var_subcadena_para_mostrar = var_palabra_en_juego
					adivinados = adivinados +1
				Fin Si
				
			Fin Para
			
            var_intentos_equivocados = var_intentos_equivocados +1
			
		Hasta Que var_total_de_intentos < 1 o var_palabra_en_juego = var_palabra_para_adivinar
		
		limpiar pantalla
		Si var_palabra_en_juego=var_palabra_para_adivinar Entonces
			escribir "GANASTE !!!"
		SiNo
			// si el usuario pierde, el programa le muestra
			// cual es la palabra que no pudo adivinar
			escribir "PERDISTE !!!"
			escribir "La palabra era = ", var_palabra_para_adivinar
		Fin Si
		escribir ""
		escribir "Deseas jugar de nuevo?"
		escribir "Escribe si para continuar o no para salir del juego y persona ENTER."
		leer var_continuar
		var_continuar = minusculas(var_continuar)
		
	hasta que var_continuar="no"
	
	escribir "hasta luego!"
	
FinAlgoritmo