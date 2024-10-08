//Programa de notas y promedios
//Rodry Ramirez
//Abril 2024
//Version 1.0
//Falta validacion de datos de ingreso y perfeccionamiento
//15.04.24 Errores solucionados, agregada validaciones de datos, se pueden agregar cantidad de materias necesarias

Funcion numvalidos=validarnumeros(ingreso)
		numvalidos=Falso
		diccionario="0123456789"
		para i=1 hasta longitud(ingreso) con paso 1 Hacer
			letra=subcadena(ingreso,i,i)
			para j=1 hasta longitud(diccionario) con paso 1 Hacer
				si letra=subcadena(diccionario,j,j)
					cont=cont+1
				FinSi
			FinPara
		FinPara
		si cont=longitud(ingreso)
			numvalidos=Verdadero
		FinSi
FinFuncion

Funcion materia=justificar(nombre por referencia)
	repetir
		si longitud(nombre)<15
			nombre=concatenar(nombre,".")
		FinSi
	hasta que longitud(nombre)=15
	materia=nombre
FinFuncion

funcion prom=promedio(notas,materia)
	definir prom como real
	definir aux como caracter
	para i=1 hasta 3 Hacer
		suma=suma+notas[materia,i]
	FinPara
	prom=suma/3
	aux=convertiratexto(prom)
	prom=ConvertirANumero(subcadena(aux,1,4))
FinFuncion

Funcion notavalida=validarnota(text)
	notavalida=Falso
	diccionario="0123456789"
	para i=1 hasta longitud(text) con paso 1 Hacer
		letra=subcadena(text,i,i)
		para j=1 hasta longitud(diccionario) con paso 1 Hacer
			si letra=subcadena(diccionario,j,j)
				cont=cont+1
			FinSi
		FinPara
	FinPara
	si cont=longitud(text)
		num=convertiranumero(text)
		si num>=1 y num<=10
			notavalida=verdadero
		FinSi
	FinSi
FinFuncion

funcion SiNoValido=validarSiNo(respuesta)
	SiNoValido=falso
	si minusculas(respuesta)="s" o minusculas(respuesta)="n"
		SiNoValido=verdadero
	FinSi
FinFuncion

Algoritmo Promedio_materias
	definir notas como real
	definir materias Como Entero
	definir nombreMaterias Como Caracter
	definir ingreso como caracter
	
	Repetir
		Escribir "Ingrese la cantidad de materias"
		leer ingreso
		si validarnumeros(ingreso)=Falso
			limpiar pantalla
			escribir "Ingrese un numero entero"
		SiNo
			materias=convertiranumero(ingreso)
		FinSi
	hasta que validarnumeros(ingreso)
	dimension notas[materias,4] // 3 trimestres
	dimension nombreMaterias[materias]
	limpiar pantalla
	
	para i=1 hasta materias con paso 1 Hacer
		escribir "Ingrese los nombres de la " i "� materia"
		leer nombrematerias[i]
	FinPara
	limpiar pantalla
	
	repetir
		limpiar pantalla
		repetir
		escribir "Desea modificar algun valor?(s/n)"
		para i=1 hasta materias con paso 1 Hacer
			escribir i "- " nombrematerias[i]
		FinPara
		leer respuesta
		si validarSiNo(respuesta)=Falso
			limpiar pantalla
			escribir "Ingrese respuesta valida"
		FinSi
		hasta que validarSiNo(respuesta)=verdadero
		si minusculas(respuesta)="s"
			escribir "�Que materia modificar?"
			leer a
			escribir "Ingrese nombre de materia"
			leer nombrematerias[a]
		FinSi
	hasta que minusculas(respuesta)="n"
	Limpiar Pantalla
	
	para trimestre=1 hasta 3 con paso 1 Hacer
		escribir trimestre "� Trimestre"
		para i=1 hasta materias con paso 1 hacer
			repetir
				escribir "Ingrese nota de " nombrematerias[i]
				leer ingreso
				si validarnota(ingreso)=Falso
					limpiar pantalla
					escribir "Ingrese nota valida"
				FinSi
			hasta que validarnota(ingreso)=verdadero
			notas[i,trimestre]=convertiranumero(ingreso)
		FinPara
		limpiar pantalla
	FinPara
	
	//presentacion de datos en pantalla
	
	escribir "Lista impresa"
	para i=1 hasta materias con paso 1 Hacer
		escribir nombrematerias[i] " " Sin Saltar
		para j=1 hasta 3 con paso 1 Hacer
			escribir notas[i,j] " " sin saltar
		FinPara
		escribir " " 
	FinPara
	escribir " "
	repetir
		repetir
			escribir "�Desea conocer el promedio de alguna materia?"
			escribir "Para salir escriba 0"
			para i=1 hasta materias
				escribir i "-" nombrematerias[i]
			FinPara
			leer ingreso
			si validarnumeros(ingreso)=Falso
				limpiar pantalla
				escribir "Ingrese un numero entero"
			SiNo
				opc=convertiranumero(ingreso)
			FinSi
		hasta que validarnumeros(ingreso)=Verdadero
		si opc<>0
			limpiar pantalla
			escribir "El promedio de " nombrematerias[opc] " es de " promedio(notas,opc)
		FinSi
	hasta que opc=0
	
	//Promedio para cada materia
	para i=1 hasta materias con paso 1 Hacer
		notas[i,4]=promedio(notas,i)
	FinPara
	//justificacion de texto para tabla
	para i=1 hasta materias con paso 1 Hacer
		auxiliar=nombrematerias[i]
		nombrematerias[i]=justificar(auxiliar)
	FinPara
	escribir "Lista impresa"
	escribir "Materia........ " sin saltar
	escribir "1 " sin saltar
	escribir "2 " sin saltar
	escribir "3 " sin saltar
	escribir "Promedio"
	para i=1 hasta materias con paso 1 Hacer
		escribir nombrematerias[i] " " Sin Saltar
		para j=1 hasta 4 con paso 1 Hacer
			escribir notas[i,j] " " sin saltar
		FinPara
		escribir " " 
	FinPara
FinAlgoritmo
