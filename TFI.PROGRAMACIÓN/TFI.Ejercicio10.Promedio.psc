Algoritmo PromedioHastaDiezCorrecto
	
	  // variables//
		Definir cantidad Como Entero;
		Definir suma, numero_ingresado, promedio Como Real;
		Definir continuar Como Logico;
		
		cantidad <- 0;
		suma <- 0;
		continuar <- Verdadero;
		
		 //bucle//
		Mientras cantidad < 10 Y continuar Hacer
			Escribir "Ingrese un número (para finalizar ingrese un número negativo)";
			
			Leer numero_ingresado;
			
			Si numero_ingresado < 0 Entonces
				continuar <- Falso;
			Sino
				suma <- suma + numero_ingresado;
				cantidad <- cantidad + 1;
			FinSi
		FinMientras
		
		
		//condicional//
		Si cantidad > 0 Entonces
			promedio <- suma / cantidad;
			Escribir "Cantidad de números válidos: ", cantidad;
			Escribir "El promedio de los números ingresados es: ", promedio;
		Sino
			Escribir "No se ingresaron números positivos.";
		FinSi
FinAlgoritmo

