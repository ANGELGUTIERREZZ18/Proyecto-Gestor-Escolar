Algoritmo GestorEscolar
    // Declaracion de variables
    Definir i, resp, r, t, u, p Como Entero
    Dimension estudiantes[9999, 5]
    Dimension carreras[9999]
    Dimension grupos[9999]
    Dimension maestros[9999, 4]
    Dimension pagos[9999]
    Dimension becas[9999]
    Definir inscripcionesRealizadas Como Logico
    inscripcionesRealizadas <- Falso  // Inicializa la variable de control
	
    // Ciclo que controla el menú
    Repetir
        // Menu principal
        Escribir " -----------------------"
        Escribir " | MENU GESTOR ESCOLAR |"
        Escribir " -----------------------"
        Escribir "1. Estudiantes"
        Escribir "2. Carreras"
        Escribir "3. Grupos"
        Escribir "4. Maestros"
        Escribir "5. Mostrar alumnos"
        Escribir "6. Salir"
        Escribir "Selecciona una opcin: "
        Leer resp  // Variable que lee la opcion del menu
        Escribir " "
        // Verificacion de la opción seleccionada
        Si resp = 1 Entonces
            // Validacion para saber si se han ingresado carreras y grupos
            Si carreras[1] = "" o grupos[1] = "" Entonces
                Escribir "Ingresa carreras y grupos primero"
            SiNo
                // Modulo de Estudiantes
                Repetir
                    Escribir " --------------------------"
                    Escribir " | SUBMENU DE ESTUDIANTES |"
                    Escribir " --------------------------"
                    Escribir "1. Ingresar Estudiante"
                    Escribir "2. Salir"
                    Leer respes
                    Si respes = 1 Entonces
                        // Ingresar estudiantes
                        Escribir "¿Cuantos estudiantes vas a ingresar?"
                        Leer r
                        Para i <- 1 Hasta r Hacer
                            // Pedir al estudiante sus datos
                            Escribir "Ingresa la matrícula del estudiante ", i
                            Leer estudiantes[i, 1]
                            Escribir "Ingresa el nombre del estudiante ", i
                            Leer estudiantes[i, 2]
                            Escribir "Ingresa la carrera en la que va a estar el estudiante ", i
                            Escribir " "
                            // Mostrar opciones de carreras
                            Para j <- 1 Hasta t Hacer
                                Escribir j, ": ", carreras[j]
                            FinPara
                            Leer estudiantes[i, 3]
                            Escribir "Ingresa el grupo al que pertenecerá"
                            Escribir " "
                            // Mostrar opciones de grupos
                            Para j <- 1 Hasta u Hacer
                                Escribir j, ": ", grupos[j]
                            FinPara
                            Leer estudiantes[i, 4]
                            Escribir " "
                            Escribir "¿El alumno tiene beca? (1) Si (2) No"
                            Leer becas[i]
                            // Validacion para saber si tiene beca o si tiene pago
                            Si becas[i] = 1 Entonces
                                Escribir "Inscrito"
                            SiNo
                                Escribir "¿El alumno tiene pago? (1) Si (2) No"
                                Leer pagos[i]
                                Escribir " "                                
                                si pagos[i] = 1 Entonces// Validación para saber si tiene pago
                                    Escribir "Inscrito"	
                                FinSi
                            FinSi                            
                            Si becas[i] = 2 y pagos[i] = 2 Entonces// Validación para alumno que no tienen ni becas ni pagos
                                Escribir "No inscrito"
                                estudiantes[i, 5] = " No inscrito"
                            SiNo
                                estudiantes[i, 5] = " Inscrito"
                            FinSi
                        FinPara
                        inscripcionesRealizadas <- Verdadero  // Actualiza la variable de control para saber que hay alumno ingresados
                    FinSi
                Hasta Que respes = 2
            FinSi
        SiNo
            Si resp = 2 Entonces
                // Modulo de Carreras
                Repetir
                    Escribir " -----------------------"
                    Escribir " | SUBMENU DE CARRERAS |"
                    Escribir " -----------------------"
                    Escribir "1. Ingresar Carrera"
                    Escribir "2. Salir"
                    Leer respca
                    Si respca = 1 Entonces
                        // Ingresar carreras
                        Escribir "¿Cuantas carreras vas a ingresar?"
                        Leer t
                        Para i <- 1 Hasta t Hacer
                            Escribir "Ingresa el nombre de la carrera ", i
                            Leer carreras[i]
                        FinPara
                    FinSi
                Hasta Que respca = 2
            SiNo
                Si resp = 3 Entonces
                    // Modulo de Grupos
                    Repetir
                        Escribir " -----------------------"
                        Escribir " | SUBMENU DE GRUPOS |"
                        Escribir " -----------------------"
                        Escribir "1. Ingresar Grupo"
                        Escribir "2. Salir"
                        Leer respgr
                        Si respgr = 1 Entonces
                            // Ingresar grupos
                            Escribir "¿Cuantos grupos vas a ingresar?"
                            Leer u
                            Para i <- 1 Hasta u Hacer
                                Escribir "Ingresa el numero del grupo ", i
                                Leer grupos[i]
                            FinPara
                        FinSi
                    Hasta Que respgr = 2
                SiNo
                    Si resp = 4 Entonces
						// Validacion para saber si se han ingresado carreras y grupos
						Si carreras[1] = "" o grupos[1] = "" Entonces
							Escribir "Ingresa carreras y grupos primero"
						SiNo
							// Modulo de Maestros
							Repetir
								Escribir " -----------------------"
								Escribir " | SUBMENU DE MAESTROS |"
								Escribir " -----------------------"
								Escribir "1. Ingresar Maestro"
								Escribir "2. Salir"
								Leer respma
								Si respma = 1 Entonces
									// Ingresar maestros
									Escribir "¿Cuantos maestros vas a ingresar?"
									Leer p
									Para i <- 1 Hasta p Hacer
										// Ingresar detalles del maestro
										Escribir "Ingresa la matrícula del maestro ", i
										Leer maestros[i, 1]
										Escribir "Ingresa el nombre del maestro ", i
										Leer maestros[i, 2]
										Escribir "En qué grupo va a estar el maestro"
										Escribir " "
										// Mostrar opciones de carreras
										Para j <- 1 Hasta t Hacer
											Escribir j, ": ", carreras[j]
										FinPara
										Escribir " "
										Leer maestros[i, 3]
										// Mostrar opciones de grupos
										Para j <- 1 Hasta u Hacer
											Escribir j, ": ", grupos[j]
										FinPara
										Escribir " "
										Leer maestros[i, 4]
									FinPara
								FinSi
							Hasta Que respma = 2
						FinSi
                    SiNo
                        Si resp = 5 Entonces
                            // Modulo de Mostrar Alumnos
                            Si inscripcionesRealizadas = Verdadero Entonces
                                Escribir "Mostrando Alumnos"
                                // Mostrar informacion de estudiantes
                                Para i <- 1 Hasta r Hacer
                                    Si pagos[i] = 2 y becas[i] = 2 Entonces
                                        Escribir estudiantes[i,2] " | Estatus: ", estudiantes[i,5] 
                                    SiNo
                                        Escribir estudiantes[i, 1], " | ", estudiantes[i, 2], " | ", estudiantes[i, 3], " | ", estudiantes[i, 4], " | Estatus: ", estudiantes[i, 5]
                                    FinSi
                                FinPara
                            SiNo
                                Escribir "No se han realizado inscripciones de alumnos"
                            FinSi
                        SiNo
                            si resp > 6 Entonces
								Escribir "Numero incorrecto. Vuelva a ingresar un numero (1,6)"// Opcion no valida en el menu principal
							FinSi
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
    Hasta Que resp = 6
    Escribir "Saliendo del programa..."
FinAlgoritmo