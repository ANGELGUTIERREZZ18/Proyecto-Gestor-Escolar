Algoritmo GestorEscolar
	Dimension estudiantes[i], carreras[i], grupos[i], pagos[i], becas[i]
	Definir i,j, resp,resp2 Como Entero
	Escribir "GESTOR ESCOLAR"
	Escribir "1.Estudiantes"
	Escribir "2.Carreras"
	Escribir "3.Grupos"
	Escribir "4.Pagos"
	Escribir "5.Becas"
	Leer resp
	
	Segun resp Hacer
		
		1:
			Escribir "1.Ingresar Estudiante"
			Escribir "2.Consultar Estudiantes"
			Leer resp2
			Segun resp2 Hacer
				1:
					Repetir
						Escribir "Ingresa la cantidad de alumnos que va a ingresar"
						Leer n
						Para i <- 1 Hasta n Hacer
							Para j <- 1 Hasta n Hacer
								Escribir "Ingrese el nombre del estudiante"
								Leer estudiantes[i,j]
								
							FinPara
						FinPara
					Hasta Que 
				opcion_2:
					secuencia_de_acciones_2
				opcion_3:
					secuencia_de_acciones_3
				De Otro Modo:
					secuencia_de_acciones_dom
			Fin Segun
			Escribir ""
		opcion_2:
			secuencia_de_acciones_2
		opcion_3:
			secuencia_de_acciones_3
		De Otro Modo:
			secuencia_de_acciones_dom
	Fin Segun
	
	
FinAlgoritmo
