class Plaga {

	var property poblacion = 0

	method nivelDeDanio() = poblacion

	method transmiteEnfermedad() = poblacion >= 10

}

class Cucaracha inherits Plaga {

	const pesoPromedio = 0

	override method nivelDeDanio() = super() / 2

	override method transmiteEnfermedad() = super() and pesoPromedio >= 10

}

class Pulga inherits Plaga {

	override method nivelDeDanio() = super() * 2

}

class Garrapata inherits Pulga {

}

class Mosquito inherits Plaga {

	override method transmiteEnfermedad() = super() and poblacion % 3 == 0

}

