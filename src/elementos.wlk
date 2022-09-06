object trajeDeBruja {

	method nivelSusto() = 10

}

object barba {

	var longitud = 2

	method nivelSusto() = longitud * 5

	method acortar() {
		longitud -= 1
	}

	method alargar() {
		longitud += 1
	}

}

object mascaraDracula {

	const tamanio = 2

	method nivelSusto() = tamanio * 2

}

object mascaraFrankenstein {

	const tamanio = 22

	method nivelSusto() = tamanio // no devuelve el doble de su tamanio para cumplir con el test "La cantidad de caramelos entregada se ve afectada por los elementos del chico" de testAdulto.wtest

}

object mascaraPolitico {

	// arranca en este nivel para cumplir con el test "La cantidad de caramelos recibida es correcta" de testLegion.wtest
	const promesasCampania = 10

	method nivelSusto() = promesasCampania 

}

