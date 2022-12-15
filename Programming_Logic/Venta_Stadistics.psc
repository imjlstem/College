//Algoritmo, Proceso principal
Algoritmo Estadisticas_Ventas
	
	//Cantidad de semanas = n, (n = #filas)
	Definir n Como Entero;
	
	Definir menu, fila, columna Como Entero;
	Definir matrixA Como Entero;
	
	//Validación de la carga de la matriz
	Definir carga_matrices Como Logico;
	carga_matrices = Falso;
	
	
	Repetir
		Escribir "Digite la cantidad de semanas a cargar";
		Leer n;
		Limpiar Pantalla;
		Si n <= 0 Entonces
			Escribir "Cantidad de semanas inválidas, intente de nuevo";
			Escribir "Presione ENTER para intentar nuevamente";
			Esperar Tecla;
		FinSi
		Limpiar Pantalla;
	Hasta Que n > 0
	//Inicialización de la matriz
	Dimension matrixA[n,7];
	Ventas_Matrix(matrixA,n);
	
	
	Repetir
		
		Repetir
			Limpiar Pantalla;
			Escribir "";
			Escribir "          Menú de Estadísticas de Ventas";
			Escribir "---------------------------------------------------";
			Escribir "Elija la accion que desee:";
			Escribir "";
			Escribir "1. Iniciar matriz de ventas";
			Escribir "2. Presentar matriz de ventas";
			Escribir "3. Ventas totales por semana";
			Escribir "4. Ventas totales por día";
			Escribir "5. Ventas acumuladas totales";
			Escribir "6. Promedio de ventas (por día, por semana y acumuladas)";
			Escribir "7. Salir";
			Leer menu;
			Limpiar Pantalla;
			//Validación opciones
			Si menu<>1 Y menu<>2 Y menu<>3 Y menu<>4 Y menu<>5 Y menu<>6 Y menu<>7 Entonces
				Escribir "Opción inválida, intente de nuevo";
				Escribir "Presione ENTER para intentar nuevamente";
				Esperar Tecla;
			FinSi
		Hasta Que menu=1 o menu=2 o menu=3 o menu=4 o menu=5 o menu=6 o menu=7
		
		Segun menu Hacer
			
			1:
				Escribir "La matriz fue inicializada con éxito";
				Escribir "";
				Escribir "Digite <ENTER> para continuar";
				
				Ventas_Matrix(matrixA,n);
				carga_matrices = Verdadero;
				Esperar Tecla;
				Limpiar Pantalla;
				
			2:
				Si carga_matrices = Verdadero Entonces
					
					Escribir "                  Días de la semana";
					Escribir "";
					Mostrar_Matrix(matrixA,n);
					Escribir "";
					Escribir "";
					Escribir "La matriz fue presentada con éxito";
					Escribir "";
					Escribir "Digite <ENTER> para continuar";
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "Regresando al menú...";
					
				SiNo
					Escribir "Primero debe de iniciar la matriz de ventas (opción 1)";
					Escribir "Inténtelo nuevamente";
				FinSi
				Esperar Tecla;
				Limpiar Pantalla;
				
			3:
				Si carga_matrices = Verdadero Entonces
					
					Escribir "                  Días de la semana";
					Escribir "";
					Mostrar_Matrix(matrixA,n);
					Escribir "-----------------------------------------------------";
					Escribir "";
					Escribir "         Reporte de Ventas Semanales";
					Escribir "-----------------------------------------------------";
					Escribir "";
					Ventas_Semanal(matrixA,n);
					Escribir "-----------------------------------------------------";
					Escribir "";
					Escribir "El reporte de ventas semanales fue presentado con éxito";
					Escribir "Digite <ENTER> para continuar";
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "Regresando al menú...";
					
				SiNo
					Escribir "Primero debe de iniciar la matriz de ventas (opción 1)";
					Escribir "Inténtelo nuevamente";
				FinSi
				Esperar Tecla;
				Limpiar Pantalla;
				
			4:
				Si carga_matrices = Verdadero Entonces
					
					Escribir "                  Días de la semana";
					Escribir "";
					Mostrar_Matrix(matrixA,n);
					Escribir "-----------------------------------------------------";
					Escribir "";
					Escribir "          Reporte de Ventas Diarias";
					Escribir "-----------------------------------------------------";
					Escribir "";
					Ventas_Diario(matrixA,n);
					Escribir "-----------------------------------------------------";
					Escribir "";
					Escribir "El reporte de ventas diarias fue presentado con éxito";
					Escribir "Digite <ENTER> para continuar";
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "Regresando al menú...";
					
				SiNo
					Escribir "Primero debe de iniciar la matriz de ventas (opción 1)";
					Escribir "Inténtelo nuevamente";
				FinSi
				Esperar Tecla;
				Limpiar Pantalla;
				
			5:
				Si carga_matrices = Verdadero Entonces
					
					Escribir "                  Días de la semana";
					Escribir "";
					Mostrar_Matrix(matrixA,n);
					Escribir "-----------------------------------------------------";
					Escribir "";
					Escribir "          Reporte de Ventas Totales";
					Escribir "-----------------------------------------------------";
					Escribir "";
					Ventas_Total(matrixA,n);
					Escribir "-----------------------------------------------------";
					Escribir "";
					Escribir "La suma de las entradas de la Matriz fue presentada con éxito";
					Escribir "Digite <ENTER> para continuar";
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "Regresando al menú...";
					
				SiNo
					Escribir "Primero debe de iniciar la matriz de ventas (opción 1)";
					Escribir "Inténtelo nuevamente";
				FinSi
				Esperar Tecla;
				Limpiar Pantalla;
				
			6:
				Si carga_matrices = Verdadero Entonces
					
					Escribir "                  Días de la semana";
					Escribir "";
					Mostrar_Matrix(matrixA,n);
					Escribir "--------------------------------------------------------------------------------------------";
					Escribir "                    Reporte de Promedios de Ventas";
					Escribir "--------------------------------------------------------------------------------------------";
					Escribir "";
					Ventas_Promedio(matrixA,n);
					Escribir "";
					Escribir "--------------------------------------------------------------------------------------------";
					Escribir "Reporte de promedios fue presentado con éxito";
					Escribir "Digite <ENTER> para continuar";
					Esperar Tecla;
					Limpiar Pantalla;
					Escribir "Regresando al menú...";
					
				SiNo
					Escribir "Primero debe de iniciar la matriz de ventas (opción 1)";
					Escribir "Inténtelo nuevamente";
				FinSi
				Esperar Tecla;
				Limpiar Pantalla;
				
			7:
				Escribir "Saliendo del menú...";
				
		FinSegun
		
	Hasta Que menu = 7;
	
FinAlgoritmo


//Subprocesos
Funcion Ventas_Matrix(matrixA,n)
	Definir fila, columna Como Entero;
	Para fila=0 Hasta n-1 Con Paso 1 Hacer
		Para columna=0 Hasta 6 Con Paso 1 Hacer
			matrixA(fila,columna) = azar(101);//0-100
		FinPara
	FinPara
FinFuncion

Funcion Mostrar_Matrix(matrixA,n)
	Definir fila, columna Como Entero;
	Escribir "      1      2      3      4      5      6      7";
	Escribir "-----------------------------------------------------";
	Para fila=0 Hasta n-1 Hacer
		Escribir fila+1, " |  " Sin Saltar; //Número de fila
		Para columna=0 Hasta 6 Hacer
			Si  matrixA(fila,columna)<10 Entonces
				Escribir " ", matrixA(fila,columna) Sin Saltar, "  |  ";
			FinSi
			Si  matrixA(fila,columna)>=10 Entonces
				Escribir matrixA(fila,columna) Sin Saltar, "  |  ";
			FinSi
		FinPara
		Escribir "";
	FinPara
FinFuncion

Funcion Ventas_Semanal(matrixA,n)
	Definir fil, col, suma_semana Como Entero;
	Para fil=0 Hasta n-1 Hacer
		suma_semana=0;
		Para col=0 Hasta 6 Hacer
			suma_semana=suma_semana+matrixA(fil,col);
		FinPara
		Escribir "                Semana ", fil+1, "   ", suma_semana;
	FinPara
FinFuncion

Funcion Ventas_Diario(matrixA,n)
	Definir fil, col, suma_dia Como Entero;
	Para col=0 Hasta 6 Hacer
		suma_dia=0;
		Para fil=0 Hasta n-1 Hacer
			suma_dia=suma_dia+matrixA(fil,col);
		FinPara
		
		Segun col Hacer
			0:
				Escribir "                Domingo   ", suma_dia;
			1:
				Escribir "                Lunes     ", suma_dia;
			2:
				Escribir "                Martes    ", suma_dia;
			3:
				Escribir "                Miércoles ", suma_dia;
			4:
				Escribir "                Jueves    ", suma_dia;
			5:
				Escribir "                Viernes   ", suma_dia;
			6:
				Escribir "                Sábado    ", suma_dia;
		FinSegun
		
	FinPara
FinFuncion

Funcion Ventas_Total(matrixA,n)
	Definir fil, col, suma_total Como Entero;
	suma_total=0;
	Para fil=0 Hasta n-1 Hacer
		Para col=0 Hasta 6 Hacer
			suma_total=suma_total+matrixA(fil,col);
		FinPara
	FinPara
	Escribir "Ventas totales de ",n," semanas:", suma_total;
FinFuncion


Funcion Ventas_Promedio(matrixA,n)
	Definir fil, col Como Entero;
	Definir suma_dia, suma_semana, suma_total, average_total Como Real;
	
	
	Escribir "POR SEMANAS:";
	Para fil=0 Hasta n-1 Hacer
		suma_semana=0;
		Para col=0 Hasta 6 Hacer
			suma_semana=suma_semana+matrixA(fil,col);
		FinPara
		Escribir " Ventas acumuladas de Semana ", fil+1, " = ", suma_semana, " | ", "El promedio de ventas es ", (suma_semana/7);
	FinPara
	
	Escribir "";
	Escribir "POR DIAS:";
	Para col=0 Hasta 6 Hacer
		suma_dia=0;
		Para fil=0 Hasta n-1 Hacer
			suma_dia=suma_dia+matrixA(fil,col);
		FinPara
		
		Segun col Hacer
			0:
				Escribir " Ventas acumuladas de los Domingos ", " = ", suma_dia, " | ", "El promedio de ventas es ", (suma_dia/n);
			1:
				Escribir " Ventas acumuladas de los Lunes    ", " = ", suma_dia, " | ", "El promedio de ventas es ", (suma_dia/n);
			2:
				Escribir " Ventas acumuladas de los Martes   ", " = ", suma_dia, " | ", "El promedio de ventas es ", (suma_dia/n);
			3:
				Escribir " Ventas acumuladas de los Miércoles", " = ", suma_dia, " | ", "El promedio de ventas es ", (suma_dia/n);
			4:
				Escribir " Ventas acumuladas de los Jueves   ", " = ", suma_dia, " | ", "El promedio de ventas es ", (suma_dia/n);
			5:
				Escribir " Ventas acumuladas de los Viernes  ", " = ", suma_dia, " | ", "El promedio de ventas es ", (suma_dia/n);
			6:
				Escribir " Ventas acumuladas de los Sábados  ", " = ", suma_dia, " | ", "El promedio de ventas es ", (suma_dia/n);
		FinSegun
		
	FinPara
	
	Escribir "";
	Escribir "";
	Escribir "Promedio Total:";
	suma_total=0;
	average_total = 0;
	Para col=0 Hasta 6 Hacer
		Para fil=0 Hasta n-1 Hacer
			suma_total=suma_total+matrixA(fil,col);
			average_total = suma_dia/(n*7);
		FinPara
	FinPara
	Escribir " Las ventas acumuladas corresponden a ", suma_total, " | ", "En promedio, por día se vendieron ", average_total;
FinFuncion