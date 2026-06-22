Algoritmo ContadorDeVocalesPrincipal
	
	
	
		Definir frase Como Cadena;
		Definir totalVocales Como Entero;
		
		Escribir "Por favor, ingrese una palabra o frase:";
		Leer frase;
		
		// Esta es la llamada al subproceso 
		totalVocales <- ContarLasVocales(frase);
		
		Escribir "La palabra ó frase que ingresaste contiene: ", totalVocales, " vocales.";
FinAlgoritmo

// Subproceso para aislar la lógica del conteo
Funcion cantidad <- ContarLasVocales(textoIngresado)
    Definir cantidad, i, longitudTexto Como Entero;
    Definir letra Como Cadena;
    
    cantidad <- 0;
    longitudTexto <- Longitud(textoIngresado);
    
    // Bucle que va desde 1 hasta la longitud total del texto
    Para i <- 1 Hasta longitudTexto Con Paso 1 Hacer
        // Extrae la letra en la posición i y la pasa a mayúscula
        letra <- Mayusculas(Subcadena(textoIngresado, i, i));
        
        // Estructura de control 
        Segun letra Hacer
            "A", "E", "I", "O", "U":
                cantidad <- cantidad + 1;
        FinSegun
    FinPara
FinFuncion
