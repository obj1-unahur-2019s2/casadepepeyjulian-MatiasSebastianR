// diferencia entre last y max, max devuelve el valor las alto, last el ultimo elemento de la lista independiente si es el valor mas alto o no
// property en la variable para no hacer el metodo,
//la orden de ejecucion es primero los parentesis despues lo de afuera


import cosas.* 
import cuentaBancaria.*

object casaDePepeYJulian {
	var cosas = []
	var property cuentaQueEstaUSando
	
	method comprar(cosa) { 
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method gastar(importe) { cuentaQueEstaUSando.extraer(importe) }
	
	method dineroDisponible() { return cuentaQueEstaUSando.saldo() }
	
	method cantidadDeCosasCompradas() { return cosas.size() }
	
	method tieneComida() { return cosas.any({ cosa => cosa.esComida()}) }
	
	method vieneDeEquiparse() { return cosas.last ({ cosa => cosa.esElectrodomestico() || cosa > 5000
	}) }

	method esDerrochona() { return cosas.sum ({ cosa => cosa.precio() }) >= 9000 }
	
	method compraMasCara() { return cosas.max ({ cosa => cosa.precio() })}

	method electrodomesticosComprados() { return cosas.filter ({ cosa => cosa.esElectrodomestico() }) }

	method malaEpoca() { return cosas.all ({ cosa => cosa.esComida()}) }
	
	method queFaltaComprar(lista) { return lista.asSet().difference(cosas.asSet()) }
	
	method faltaComida() { return cosas.count ({ cosa => cosa.esComida() }) > 2 }
	
	method gastoEnComida() { return cosas.filter({ cosa => cosa.esComida()}).sum({ cosa => cosa.precio() }) }
							
	// method hayElectrodomesticosBaratos() { return cosas.any({ cosa => cosa.esElectrodomestico().precio() < 3000}) }
	
	method hayElectrodomesticosBaratos() {
		return cosas.filter({ cosa => cosa.esElectrodomestico() }).any({ cosa => cosa.precio() < 3000}) }
			
    method preciosDeElectrodomesticos() {
		return cosas.filter({ cosa => cosa.esElectrodomestico() }).map({ cosa => cosa.precio() }) }	
	
	method nivelEnAumento() { return cosas.last().precio()>=cosas.first().precio()*2 }
	
	method primeraComidaComprada() { return cosas.find({ cosa => cosa.esComida() })}
	
}
