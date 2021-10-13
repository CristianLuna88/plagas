class Hogar {

	var property nivelDeMugre = 0
	var property confort = 0

	method esBueno() = nivelDeMugre <= confort / 2

	method efectoDeAtaqueDe(unaPlaga) {
		nivelDeMugre += unaPlaga.nivelDeDanio()
	}

}

class Huerta {

	var property capacidadDeProduccion = 0

	method esBueno() = capacidadDeProduccion > nivel.valor()

	method efectoDeAtaqueDe(unaPlaga) {
		capacidadDeProduccion -= (unaPlaga.nivelDeDanio() * 0.1) + if(unaPlaga.transmiteEnfermedad()) 10 else 0
	}

}

object nivel {

	var property valor = 0

}

class Mascota {

	var property nivelDeSalud = 0

	method esBueno() = nivelDeSalud > 250

	method efectoDeAtaqueDe(unaPlaga) {
		if (unaPlaga.transmiteEnfermedad()) {
			nivelDeSalud -= unaPlaga.nivelDeDanio()
		}
	}

}

