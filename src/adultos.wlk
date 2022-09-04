import chicos.*
import legion.*
import elementos.*

object mirca {

	var tolerancia = 22

	method tolerancia() {
		return tolerancia
	}

	method serAsustadoPor(chico) {
		if (tolerancia < chico.capacidadSusto()) {
			chico.recibirCaramelos(self.caramelosAEntregar(chico))
		}
		tolerancia -= 1
	}

	method caramelosAEntregar(chico) {
		return (chico.capacidadSusto() - tolerancia).max(0)
	}

}

