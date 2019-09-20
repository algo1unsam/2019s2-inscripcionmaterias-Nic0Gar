class Alumno {

	var nombre
	var carreraAlumno = []
	var materiasAprobadas = []
	var materiasInscriptas = []
	

	method agregarMateriasAprobadas(materia) {
		materiasAprobadas.add(materia)
	}
	
	method creditoDisponible(){
		return materiasInscriptas.sum{ materia => materia.daCredito() }
	}
	

	// debe corresponder a alguna de las 
	// carreras que esté cursando el estudiante
	method estaEnLaCarrera(materia) {
		return carreraAlumno.forEach({ unaCarrera => unaCarrera.tieneMateria(materia) }).size() == 1
	}

	method inscribirCarrera(carrera) {
		carrera.add(self)
	}

	// no puede haber aprobado la materia previamente
	// ni estar inscripto
	method aproboLaMateria(materia) {
		return materiasAprobadas.contains(materia)
	}

	method estaInscripto(materia) {
		return materiasInscriptas.contains(materia)
	}

	method siPuedeCursar(materia) {
		return
	}

}

