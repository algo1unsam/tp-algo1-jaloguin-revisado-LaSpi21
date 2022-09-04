import elementos.*

object macaria {

	var nivelIra = 10
	const disfraces = [ ]
	var property caramelos = 0

	method disfraces() {
		return disfraces
	}

	method enojarse() {
		nivelIra += 2
	}

	method capacidadSusto() {
		return nivelIra + disfraces.sum({ unDisfraz => unDisfraz.nivelSusto() })
	}

	method recibirCaramelos(cantidad) {
		caramelos += (cantidad.div(4 / 3))
	}

	method dejarDeUsarMenosEfectivo() {
		disfraces.remove(disfraces.min({ unDisfraz => unDisfraz.nivelSusto()}))
	}

	method quitarDisfraz(disfraz) {
		disfraces.remove(disfraz)
	}

	method disfrazar(disfraz) {
		disfraces.add(disfraz)
	}

}

object pancracio {

	const property disfraces = [ mascaraDracula ]
	var cantidadDeU = 4
	var property caramelos = 0

	method enojarse() {
		cantidadDeU += 2
	}

	method quitarDisfraz(disfraz) {
		self.enojarse()
	}

	method disfrazar(disfraz) {
		disfraces.clear()
		disfraces.add(disfraz)
	}

	method recibirCaramelos(cantidad) {
		caramelos += cantidad
	}

	method capacidadSusto() {
		return cantidadDeU + disfraces.sum({ unDisfraz => unDisfraz.nivelSusto() })
	}

}

// El chico inventado .
object pedro {

	/*Pedro es muy timido y su capacidad de asustar es inicialmente cero.
	 * Ademas es muy solidario y le regala todos sus caramelos a su hermano, por lo que no se queda con ninguno.
	 * 
	 * el chico inventado necesita poder entender y dar las respuestas necesarias a los mensajes requeridos por la legion, el barrio y mirca.
	 * Ademas requiere que inicie sin disfraces, entender tirarTodosLosDisfraces() y que su capacidad de susto inicial sea cero para cumplir con sus propios tests.
	 * Por último para satisfacer el test "Los caramelos son la suma de los de sus integrantes" de testLegion.wtest
	 * necesita no guardarse los caramelos que recibiese.
	 *  
	 */
	const property disfraces = []
	const sustoBase = 0
	var property caramelos = 0

	method capacidadSusto() {
		return sustoBase + disfraces.sum({ unDisfraz => unDisfraz.nivelSusto() })
	}

	method recibirCaramelos(cantidad) {
	}

	method dejarDeUsarMenosEfectivo() {
		disfraces.remove(disfraces.min({ unDisfraz => unDisfraz.nivelSusto()}))
	}

	method quitarDisfraz(disfraz) {
		disfraces.remove(disfraz)
	}

	method disfrazar(disfraz) {
		disfraces.add(disfraz)
	}

	method tirarTodosLosDisfraces() {
		disfraces.clear()
	}

}

