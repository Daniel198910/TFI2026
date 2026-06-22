   Algoritmo AreaDeUnTrianguloPrincipal
	
	
	//Solicitamos base y altura, valida datos y calculamos el área//
	
		Definir base, altura, areaResultado Como Real;
		
		Repetir
			Escribir "Ingrese la base del triángulo:";
			Leer base;
			Si base <= 0 Entonces
				Escribir "Error: La base debe ser un número positivo. Intente de nuevo.";
			FinSi
		Hasta Que base > 0;
		
		
		Repetir
			Escribir "Ingrese la altura del triángulo";
			Leer altura;
			Si altura <= 0 Entonces
				Escribir "Error: La altura debe ser un número positivo. Intente de nuevo.";
			FinSi
		Hasta Que altura > 0;
		
		// Llamada a la función (resultado)//
		areaResultado <- CalcularAreaTriangulo(base, altura);
		
		// resultados//
		Escribir "Resultados:";
		Escribir "-> Base ingresada: ", base;
		Escribir "-> Altura ingresada: ", altura;
		Escribir "El área del triángulo es: ", areaResultado;
FinAlgoritmo

	// Función//
Funcion areaFinal <- CalcularAreaTriangulo(b, a)
	
	// la variable de retorno se define adentro //
	Definir areaFinal Como Real;
    areaFinal <- (b * a) / 2;
	
FinFuncion

