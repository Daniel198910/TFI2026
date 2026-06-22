Algoritmo InvertirTextoPrincipal
	
	
	
		Definir frase, fraseInvertida Como Cadena;
		
		Escribir "Ingrese texto o frase:";
		Leer frase;
		
		//Esta es la llamada al subproceso encargado de invertir la cadena//
		fraseInvertida <- InvertirCadena(frase);
		
		// Esto va mostrar el resultado final//
		Escribir "";
		Escribir "Texto original: ", frase;
		Escribir "Texto invertido: ", fraseInvertida;
FinAlgoritmo

// Este es el Subproceso que procesa y retorna la cadena al revés//
Funcion textoAlReves <- InvertirCadena(textoOriginal)
    Definir textoAlReves, letra Como Cadena;
    Definir i, longitudTexto Como Entero;
    
    textoAlReves <- "" ;
    longitudTexto <- Longitud(textoOriginal);
    
    // Bucle inverso que recorre desde la última letra hasta la primera//
    Para i <- longitudTexto Hasta 1 Con Paso -1 Hacer
        letra <- Subcadena(textoOriginal, i, i);
		
        // Esto me parece importante: Uso el operador '+' para asegurar la unión de caracteres en cualquier perfil//
        textoAlReves <- textoAlReves + letra;
    FinPara
FinFuncion
