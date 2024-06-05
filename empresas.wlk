import universidad.*
import profesionales.*

class Empresa {
	const profesionales = #{}
	var property honorariosDeReferencia 
	method agregarProf(nuevoProf){profesionales.add(nuevoProf)}
	method eliminarProf(nuevoProf){profesionales.remove(nuevoProf)}
	method cuantosEstudiaronEn(unaUniversidad) {
		return profesionales.count({p => p.universidad() == unaUniversidad})
	}
	method profesionalesCaros(){profesionales.filter({p =>p.honorariosPorHora()>self.honorariosDeReferencia()})	}
	method universidadesFormadoras(){profesionales.map({p =>p.universidad()}).asSet()	}
	method profesionalBarato(){profesionales.min({p=>p.honorariosPorHora()<self.honorariosDeReferencia()})	}
} 