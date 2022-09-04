import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {

	const property integrantes = [ ]

	method agregarIntegrantes(chicos) {
		integrantes.addAll(chicos)
	}

	method capacidadSusto() {
		return integrantes.sum({ unIntegrante => unIntegrante.capacidadSusto() })
	}

	method caramelos() {
		return integrantes.sum({ unIntegrante => unIntegrante.caramelos() })
	}

	method lider() {
		return integrantes.max({ unIntegrante => unIntegrante.capacidadSusto() })
	}

	method recibirCaramelos(cantidad) {
		integrantes.max({ unIntegrante => unIntegrante.capacidadSusto()}).recibirCaramelos(cantidad)
	}

	method disfracesRepetidos() {
		const listaAux = integrantes.flatMap({ unIntegrante => unIntegrante.disfraces().withoutDuplicates() }) // toma de cada chico los disfraces que tenga al menos una vez y crea una lista auxiliar con los disfraces obtenidos de cada chico.
		return listaAux.filter({ unDisfraz => listaAux.occurrencesOf(unDisfraz) > 1 }).withoutDuplicates() // revisa en la lista auxiliar por repetidos y los devuelve.
	}

	method normaSinRepetidos() {
		self.disfracesRepetidos().forEach({ unDisfraz => integrantes.forEach({ unIntegrante => unIntegrante.quitarDisfraz(unDisfraz)})})
	}

	method todosLosDisfraces() {
		return integrantes.flatMap({ unIntegrante => unIntegrante.disfraces() })
	}

}

