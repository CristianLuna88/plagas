class Hogar {

	var property nivelDeMugre = 0
	var property confort = 0

	method esBueno() = nivelDeMugre <= confort / 2

}

class Huerta {

	var property capacidadDeProduccion = 0

	method esBueno() = capacidadDeProduccion > nivel.valor()

}

object nivel {

	var property valor = 0

}

class Mascota {

	var property nivlDeSalud = 0

	method esBueno() = nivlDeSalud > 250

}

