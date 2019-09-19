object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesasRebozadas {
	var sale = 260
	
	method precio(valor) { sale = valor }
	method precio() { return sale }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object BotellaDeSalsaDeTomates {
	var sale = 90
	
	method precio(valor) { sale = valor }
	method precio() { return sale }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object microondas {
	
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cebollas {
	
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	

object packComida {
	var plato
	var aderezo
	
	method precio() {
		return plato.precio() + aderezo.precio()
		}
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object packRegalo {
	var componentes	
	
	method precio() { return componentes.sum ({ cosa => cosa.precio()}) *0.8 }
	method esComida() {return componentes.all ({ cosa => cosa.esComida() }) } 
	method esElectrodomestico() {return componentes.any ({ cosa => cosa.esElectrodomestico()}) }	
}