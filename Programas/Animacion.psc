Funcion dibujar(num)
	limpiar pantalla
	dibujo="o"
	espacios="              "
	escribir subcadena(espacios,1,num)+dibujo
	esperar 50 milisegundos
	
FinFuncion

Algoritmo Animacion
	repetir
		para num=1 hasta 10 con paso 1 Hacer
			dibujar(num)
		FinPara
		para num=10 hasta 1 con paso -1 Hacer
			dibujar(num)
		FinPara
		cont=cont+1
	hasta que cont=4
FinAlgoritmo
