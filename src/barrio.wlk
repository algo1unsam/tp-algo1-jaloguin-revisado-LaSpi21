import chicos.*
import elementos.*
import adultos.*
import legion.*

object barrio {

	var property chicos = []

	method chicosConMasCaramelos(cantidad) {
		chicos.sortBy{ unChico , otroChico => unChico.caramelos() > otroChico.caramelos()}
		return chicos.subList(0, cantidad - 1)
	}

	method algunoMuyAsustador() {
		return chicos.any({ unChico => unChico.capacidadSusto() > 42 })
	}

}

