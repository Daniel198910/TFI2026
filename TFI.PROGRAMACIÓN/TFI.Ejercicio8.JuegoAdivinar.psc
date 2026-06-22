Algoritmo JuegoAdivina
	
	
	// VARIABLE//
		Definir numSecreto, intentoUsuario, diferencia Como Entero;
		
		// Usamos 'azar' en minúsculas y una variable con nombre diferente al algoritmo //
		numSecreto <- azar(25) + 1;
		
		Escribir "Puedes Adivinar que número elegí? Te doy una pista está entre el 1 y el 25";
		
		// Bucle principal del juego//
		Repetir
			// Bucle para validar que el número ingresado esteé entre 1 y 25//
			Repetir
				Escribir "intenta: (entre 1 y 25):";
				Leer intentoUsuario;
				Si intentoUsuario < 1 O intentoUsuario > 25 Entonces
					Escribir "Error: El número debe estar estrictamente entre 1 y 25.";
					Escribir "";
				FinSi
			Hasta Que intentoUsuario >= 1 Y intentoUsuario <= 25;
			
			//usamos condicional para  calculo de la distancia absoluta //
			diferencia <- numSecreto - intentoUsuario;
			Si diferencia < 0 Entonces
				diferencia <- diferencia * (-1);
			FinSi
			
			//  vamos a darle mensajes al ususario, segun la cercanía de su intento//
			Si intentoUsuario = numSecreto Entonces
				Escribir " ¡EXCELENTE! El número era el ", numSecreto, " Has acertado.";
			Sino
				Si diferencia <= 3 Entonces
					Escribir " ¡INCORRECTO! estás CERCA Intenta de nuevo.";
				Sino
					Escribir " ¡INCORRECTO! estás ALEJADO. Intenta de nuevo.";
					
				FinSi
				
			FinSi
			
		Hasta Que intentoUsuario = numSecreto;
		
    

FinAlgoritmo
