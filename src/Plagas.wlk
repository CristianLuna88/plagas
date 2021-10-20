import Elementos.*

class Plaga {

	var property poblacion = 0

	method nivelDeDanio() = poblacion

	method transmiteEnfermedad() = poblacion >= 10

	method efectoDeAtaqueA(unElemento) {
		unElemento.efectoDeAtaqueDe(self)
		poblacion *= self.porcentajeDeAumentoDePoblecion()
	}

	method porcentajeDeAumentoDePoblecion() = aumentoDePoblacion.porcentajeDeAumento()

}

object aumentoDePoblacion {

	method porcentajeDeAumento() = 1.1

}

class Cucaracha inherits Plaga {

	var property pesoPromedio = 0

	override method nivelDeDanio() = super() / 2

	override method transmiteEnfermedad() = super() and pesoPromedio >= 10

	override method efectoDeAtaqueA(unElemento) {
		super(unElemento)
		pesoPromedio += 2
	}

}

class Pulga inherits Plaga {

	override method nivelDeDanio() = super() * 2

}

class Garrapata inherits Pulga {

	override method porcentajeDeAumentoDePoblecion() = 1.2

}

class Mosquito inherits Plaga {

	override method transmiteEnfermedad() = super() and poblacion % 3 == 0

}

