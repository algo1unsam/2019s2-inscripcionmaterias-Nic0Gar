
class Carrera {
	
	var listaMaterias = []
	
	method agregarMateria(nombreMateria){
		listaMaterias.add(nombreMateria)
	}
	method tieneMateria(materia){
		return listaMaterias.contains(materia)
	}
	
}
