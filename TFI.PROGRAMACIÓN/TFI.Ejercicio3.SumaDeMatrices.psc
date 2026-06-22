Algoritmo SumaDeMatricesPrincipal
	
	
		// Defimimos las dimensiones de las matrices (elegí 2x2 pero se puede cambiar a cualquier tipo de matriz)//
		Definir filas, columnas Como Entero;
		filas <- 2;
		columnas <- 2;
		
		// Declaración de las tres matrices//
		Definir matrizA, matrizB, matrizResultado Como Entero;
		Dimension matrizA[filas, columnas];
		Dimension matrizB[filas, columnas];
		Dimension matrizResultado[filas, columnas];
		
		// Acá carga de datos de la primera matriz//
		Escribir " Cargar datos para MATRIZ A: ";
		CargarMatriz(matrizA, filas, columnas);
		
		// acá carga de datos de la segunda matriz//
		
		Escribir "Cargar datos para MATRIZ B:";
		CargarMatriz(matrizB, filas, columnas);
		
		// Suma de ambas matrices//
		SumarMatrices(matrizA, matrizB, matrizResultado, filas, columnas);
		
		// Salida de datos: resultados//
		
		Escribir "Matriz A:";
		MostrarMatriz(matrizA, filas, columnas);
		
		Escribir "Matriz B:";
		MostrarMatriz(matrizB, filas, columnas);
		
		Escribir " Resultado de Matrices (A + B):";
		MostrarMatriz(matrizResultado, filas, columnas);
		
FinAlgoritmo

// Subproceso para llenar  matriz con datos ingresados/
SubProceso CargarMatriz(matriz Por Referencia, f, c)
    Definir i, j Como Entero;
    Para i <- 1 Hasta f Con Paso 1 Hacer
        Para j <- 1 Hasta c Con Paso 1 Hacer
            Escribir "Ingrese el valor [fila ", i, ", columna ",j, "]:";
            Leer matriz[i, j];
        FinPara
    FinPara
FinSubProceso

// Subproceso para sumar las matrices posición por posición//
SubProceso SumarMatrices(mA Por Referencia, mB Por Referencia, mR Por Referencia, f, c)
    Definir i, j Como Entero;
    Para i <- 1 Hasta f Con Paso 1 Hacer
        Para j <- 1 Hasta c Con Paso 1 Hacer
            mR[i, j] <- mA[i, j] + mB[i, j];
        FinPara
    FinPara
FinSubProceso

// Subproceso para mostrar la matriz en la pantalla//
SubProceso MostrarMatriz(matriz Por Referencia, f, c)
    Definir i, j Como Entero;
    Definir linea Como Cadena;
    Para i <- 1 Hasta f Con Paso 1 Hacer
        linea <- "";
        Para j <- 1 Hasta c Con Paso 1 Hacer
            // Convertimos el número a texto y agregamos espacio para tabular//
            linea <- linea + ConvertirATexto(matriz[i, j]) + "   ";
        FinPara
        Escribir "[ ", linea, "]";
    FinPara
FinSubProceso
