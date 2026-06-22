Algoritmo InteresSimple
	
	
	   // variable//
		Definir capital, tiempo, tasaInteres, interesResultado Como Real;
		
		// Tasa de interés precargada en el ejercicio ( 0.05 equivale al 5%)/
		tasaInteres <- 0.05;
		
		Escribir "La tasa de interés anual aplicada es del: ", (tasaInteres * 100), "%";
		
		// bucle para validar  Capital mayor a 0 //
		Repetir
			Escribir "Ingrese el capital a invertir:";
			Leer capital;
			Si capital <= 0 Entonces
				Escribir "Error: El capital debe ser un monto mayor a 0. Intentelo de nuevo.";
			FinSi
		Hasta Que capital > 0;
		
		// Bucle para validar  que el Tiempo de inversión sea un número mayor a 0 //
		Repetir
			Escribir "Ingrese el tiempo (años) de inversión:";
			Leer tiempo;
			Si tiempo <= 0 Entonces
				Escribir "Error: El tiempo debe ser mayor a cero. Intente de nuevo.";
			FinSi
		Hasta Que tiempo > 0;
		
		// Esta es la llamada a la función (con las variables requeridas)  //
		interesResultado <- CalcularInteres(capital, tasaInteres, tiempo);
		
		// los resultados//
		Escribir "Resultados de la simulación:";
		Escribir "-> Capital inicial: $", capital;
		Escribir "-> Tiempo: ", tiempo, " año(s)";
		Escribir "-> Interés generado: $", interesResultado;
		Escribir "-> Monto total final: $", (capital + interesResultado);
		
		
FinAlgoritmo

// Función para resolver la fórmula del interés //
Funcion ganancia <- CalcularInteres(cap, tasa, t)
    Definir ganancia Como Real;
    
    // Aplicamos la fórmula: interés = capital * tasa * tiempo  //
    ganancia <- cap * tasa * t;
	
	
FinFuncion

