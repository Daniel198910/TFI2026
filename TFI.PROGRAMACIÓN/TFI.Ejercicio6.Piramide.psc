Algoritmo Piramide
	
	 // Ponemos la variable //
		Definir altura Como Entero;
		
		// bucle para validación de la altura//
		Repetir
			Escribir "Ingrese la altura deseada para su pirámide:";
			Leer altura;
			Si altura <= 0 Entonces
				Escribir "Error: La altura debe ser mayor a cero. Intente de nuevo.";
				Escribir "";
			FinSi
		Hasta Que altura > 0;
		
		// Llamada al subproceso encargada del dibujo//
		DibujarPiramideCentrada(altura);
		
FinAlgoritmo

// este Subproceso es el que calcula espacios y números para centrar el triángulo /7
SubProceso DibujarPiramideCentrada(alt)
    Definir fila, columna, espacios Como Entero;
    
    Escribir "Esta es tu  pirámide:";
    
    // Este es el bucle externo  que  controla los escalones //
    Para fila <- 1 Hasta alt Con Paso 1 Hacer
        
        // Primer bucle interno: Imprime los espacios  para centrar la fila //
        Para espacios <- 1 Hasta (alt - fila) Con Paso 1 Hacer
            Escribir Sin Saltar " ";
        FinPara
        
        // Segundo bucle interno: Imprime los números  separados por un espacio //
        Para columna <- 1 Hasta fila Con Paso 1 Hacer
            Escribir Sin Saltar columna, " ";
        FinPara
        
        //  con esto logro el salto de línea para pasar al siguiente escalón //
        Escribir "";
    FinPara
    
    
FinSubProceso
