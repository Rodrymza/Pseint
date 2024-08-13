//Dia de la semana entre 1900-2100
//Rodry Ramirez
//Abril 2024
//Version 1.0
Funcion bisiesto=esbisiesto(anio)
	bisiesto=Falso
	si (anio%4=0 y no anio%100=0) o anio%400=0
		bisiesto=Verdadero
	FinSi
FinFuncion

funcion ingresovalido=validaringreso(a)
	definir diccionario Como Caracter
	diccionario="0123456789"
	validadomenu=Falso
	para i=1 hasta longitud(a) con paso 1 Hacer
		num=subcadena(a,i,i)
		para j=1 hasta longitud(diccionario)
			si num=subcadena(diccionario,j,j)
				cont=cont+1
			FinSi
		FinPara
	FinPara
	si cont=Longitud(a)
		ingresovalido=Verdadero
	FinSi
FinFuncion

funcion fechavalida=validarfecha(dia,mes,anio)
	definir fechavalida como logico
	fechavalida=Falso
	segun mes hacer
		1,3,5,7,8,10,12:
			si dia<=31 y dia>=1
				fechavalida=Verdadero
			FinSi
		2: 
			si esbisiesto(anio)=Verdadero
				si dia>=0 y dia<=29
					fechavalida=Verdadero
				FinSi
			SiNo
				si dia>=0 y dia<=28
					fechavalida=Verdadero
				FinSi
			FinSi
		4,6,9,11:
			si dia<=30 y dia>=1
				fechavalida=Verdadero
			FinSi
		De Otro Modo:
			fechavalida=Falso
	FinSegun
FinFuncion

funcion diames=diasdelmes(mes,anio)
	definir diames Como Entero
	segun mes hacer
		1,3,5,7,8,10,12:
			diames=31
		2: 
			si esbisiesto(anio)=Verdadero
				diames=29
			SiNo
				diames=28
			FinSi
			
		4,6,9,11:
			diames=30
	FinSegun
FinFuncion


Algoritmo DiaSemana
	definir dia,mes,anio Como Entero
	definir ingreso Como Caracter
	escribir "Programa para averiguar que dia fue o sera una determinada fecha"
	Repetir
		Repetir
			escribir "Ingrese dia"
			leer ingreso
			si validaringreso(ingreso)=Falso
				escribir "Ingrese un valor valido"
			SiNo
				dia=convertiranumero(ingreso)
			FinSi
		hasta que validaringreso(ingreso)=verdadero 
		Repetir
			escribir "Ingrese mes"
			leer ingreso
			si validaringreso(ingreso)=Falso
				escribir "Ingrese un valor valido"
			SiNo
				mes=convertiranumero(ingreso)
			FinSi
		hasta que validaringreso(ingreso)=verdadero 
		Repetir
			escribir "Ingrese año"
			leer ingreso
			si validaringreso(ingreso)=Falso
				escribir "Ingrese un valor valido"
			SiNo
				anio=convertiranumero(ingreso)
			FinSi
		hasta que validaringreso(ingreso)=verdadero 
		si validarfecha(dia,mes,anio)=Falso
			escribir "Ingresaste una fecha incorrecta"
		FinSi
	hasta que validarfecha(dia,mes,anio)=verdadero
	Limpiar Pantalla
	escribir "Fecha ingresada"
	escribir dia "/" mes "/" anio
	// encontrando dia de la semana
	
	para i=1900 hasta anio-1 con paso 1 Hacer
		si esbisiesto(anio)=Verdadero
			diastotales=diastotales+366
		SiNo
			diastotales=diastotales+365
		FinSi
	FinPara
	
	si mes=1
		diasmes=0
	sino
		para i=1 hasta mes-1 Hacer
			diasmes=diasdelmes(mes,anio)
			diastotales=diastotales+diasmes
		FinPara
	finsi	
	diastotales=diastotales+dia
	indicador=diastotales%7
	segun indicador Hacer
		0: escribir "Es dia Domingo"
		1: escribir "Es dia Lunes"
		2: escribir "Es dia Martes"
		3: escribir "Es dia Miercoles"
		4: escribir "Es dia Jueves"
		5: escribir "Es dia Viernes"
		6: escribir "Es dia Sabado"
	FinSegun
FinAlgoritmo
