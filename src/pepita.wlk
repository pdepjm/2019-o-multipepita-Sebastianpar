object pepita {
	var energia = 100

	method estaCansada() = energia < 50
	

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz() = energia.between(500,1000)		

	method cuantoQuiereVolar(){
		var kms = energia/5

		if(energia.between(300,400)){
			kms+=10
		}
		if(energia % 20 == 0){
			kms+=15
		}

		return kms
	}

	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}

	method haceLoQueQuieras(){

		if(self.estaFeliz()){	
			self.vola(8)
		}else if(self.estaCansada()){
			self.come(alpiste)
		}
	}	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}
object mijo{
	var estaMojado=false
	method mojarse(){
		 estaMojado = true
	}
	method secarse(){
		estaMojado = false
	}

	method energiaQueOtorga() = if (estaMojado) 15 else 20

}

object canelones{
	var energiaPorSalsa = 0
	var energiaPorQueso = 0
	
	method ponerSalsa(){
		energiaPorSalsa = 5
	}

	method sacarSalsa(){
		energiaPorSalsa = 0
	}

	method ponerQueso(){
	 	energiaPorQueso = 5
	}

	method sacarQueso(){
	 	energiaPorQueso = 0
	}
	method energiaQueOtorga() = 20 + energiaPorSalsa + energiaPorQueso
}

object roque {
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.hacerLoQueQiera()
	}
}