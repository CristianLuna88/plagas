import Elementos.*
import Plagas.*

class Barrio {

	const elementos = []

	method agregarElemento(unElemento) {
		elementos.remove(unElemento)
	}

	method quitarElemento(unElemento) {
		elementos.remove(unElemento)
	}

	method agregarVariasElementos(listaDeElementos) {
		elementos.addAll(listaDeElementos)
	}

	method esCopado() = self.cantidadDeElementosBuenos() > self.cantidadDeElementosMalos()

	method cantidadDeElementosBuenos() = elementos.count{ e => e.esBueno() }

	method cantidadDeElementosMalos() = elementos.count{ e => not e.esBueno() }

}

