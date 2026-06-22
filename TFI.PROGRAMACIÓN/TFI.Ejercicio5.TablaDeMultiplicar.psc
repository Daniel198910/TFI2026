Algoritmo TablaDeMultiplicarPrincipal
	

	Definir n Como Entero;
	
		// validamos datos (usamos condicional)//
		Repetir
			Escribir "Ingrese un número entero  para ver su tabla hasta el 20 ";
			Leer n;
			Si n <= 0 Entonces
				Escribir "Error Intente de nuevo ingresando un número mayor a 0 .";
			FinSi
		Hasta Que n > 0;
		
		// Llamada al subproceso encargado de la salida de datos //
		MostrarTabla(n);
		
FinAlgoritmo

// Subproceso  que calcula y muestra la tabla de multiplicar hasta el 20 //
SubProceso MostrarTabla(numeroBase)
    Definir i, resultado Como Entero;
    Escribir " TABLA DEL NUMERO ", numeroBase;
    
    // Aaca usamos un Bucle para repetir 20 veces //
    Para i <- 1 Hasta 20 Con Paso 1 Hacer
        resultado <- numeroBase * i;
        Escribir numeroBase, " X ", i, " = ", resultado;
    FinPara
	
	
FinSubProceso

