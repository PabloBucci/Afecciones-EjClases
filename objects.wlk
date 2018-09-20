object sara {
	var peso = 55
	var vitalidad = 90
	var temperatura = 37
	
	method getPeso() {return peso}
	method getVitalidad() {return vitalidad}
	method getTemperatura() {return temperatura}
	
	method setPeso (unPeso){
		peso = unPeso
	}
	method setVitalidad (unValor){
		vitalidad = unValor
	}
	method setTemperatura (unaTemperatura){
		temperatura = unaTemperatura
	}
	method afectar (afeccion){
		afeccion.afectar(self)
	}
}

object malaria {
	method afectar (unaPersona){
		unaPersona.setTemperatura(unaPersona.getTemperatura() +3) 
	}
}

object varicela {
	method afectar (unaPersona){
		var vitalidad; var peso
		vitalidad = unaPersona.getVitalidad()
		peso = unaPersona.getPeso()
		vitalidad -= 5
		peso = (peso - peso * 0.1)
		unaPersona.setVitalidad(vitalidad)
		unaPersona.setPeso(peso)
	}
}