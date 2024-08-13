//Rodry (c)
//Version 1.0 2024
//Programa para verificar el numero de cuil
funcion primeros_2(vectordni por referencia,sexo)
	si mayusculas(sexo)="F"
		vectordni[1]=2
		vectordni[2]=7
	SiNo
		vectordni[1]=2
		vectordni[2]=0
	FinSi
FinFuncion

funcion dni_medio(vectordni por referencia,dni)
	dnitext=ConvertirATexto(dni)
	long=longitud(dnitext)
	si long=7
		vectordni[3]=0
		a=1
		para num=3 hasta 10
			aux=subcadena(dnitext,a,a)
			vectordni[num]=ConvertirANumero(aux)
			a=a+1
		FinPara
	SiNo
		a=1
		para num=3 hasta 10
			aux=subcadena(dnitext,a,a)
			vectordni[num]=ConvertirANumero(aux)
			a=a+1
			
		FinPara
	FinSi
	
FinFuncion

funcion ultima_cifra(vectordni por referencia,sexo)
	definir sumas,total Como Real
	dimension sumas[10]
	si mayusculas(sexo)="F"
		vectordni[1]=2
		vectordni[2]=7
	SiNo
		vectordni[1]=2
		vectordni[2]=0
	FinSi
	sumas[1]=vectordni[1]*5
	sumas[2]=vectordni[2]*4
	sumas[3]=vectordni[3]*3
	sumas[4]=vectordni[4]*2
	sumas[5]=vectordni[5]*7
	sumas[6]=vectordni[6]*6
	sumas[7]=vectordni[7]*5
	sumas[8]=vectordni[8]*4
	sumas[9]=vectordni[9]*3
	sumas[10]=vectordni[10]*2
	para num=1 hasta 10 Hacer
		total=total+sumas[num]
	FinPara
	si total%11=0
		vectordni[11]=0
	SiNo
		si total%11=1
			si mayusculas(sexo)="F"
				vectordni[11]=4
				vectordni[1]=2
				vectordni[2]=3
			SiNo
				vectordni[11]=9
				vectordni[1]=2
				vectordni[2]=3
			FinSi
		SiNo
			resto=total%11
			numers=11-redon(resto)
			vectordni[11]=numers
		FinSi
	FinSi
FinFuncion

Algoritmo numero_cuil
	definir dni,long,cuil como entero
	definir dnitext,sexo como caracter
	dimension vectordni[11]
	Repetir
		escribir "Ingrese numero de DNI sin puntos ni comas"
		leer dni
		si dni<2000000 o dni>60000000
			escribir "DNI incorrecto"
		FinSi
	Hasta Que dni>=2000000 y dni<=60000000
	repetir
		escribir "Ingrese sexo M/F"
		leer sexo
		si mayusculas(sexo)<>"F" y mayusculas(sexo)<>"M"
			escribir "Dato incorrecto"
		FinSi
hasta que mayusculas(sexo)="M" o mayusculas(sexo)="F"
primeros_2(vectordni,sexo)
dni_medio(vectordni,dni)
ultima_cifra(vectordni,sexo)

dimension cadena[11]
para num=1 hasta 11 Hacer
	cadena[num]=convertiratexto(vectordni[num])
FinPara
para num=1 hasta 11 hacer
	text=concatenar(text,cadena[num])
FinPara
escribir "El cuil para el dni ingresado es " text
FinAlgoritmo
// xx-xxxxxxxx-x