import comidas.*

object pepita {
	var energia = 0
  
	method comerAlpiste(gramos) {
    	energia = energia + (gramos * 4)
  	}
  
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
  
 	method volar(kms) {
    	energia = energia - (kms + 10)
  	}
  
 	method energia() { return energia }
 	
 	method salirAcomer() {
 		self.volar(5)
 		self.comer(alpiste, 80)
 		self.volar(5)
 	}
 	
 		method puedeVolar() 
	{
	 	return energia > 0
	}
	
	method estaDebil(){
		return energia < 50
	}
	
	method estaFeliz(){
		return energia.between(500, 1000)
	}
	
	method comerPastillaMagica(){
		return energia * 2
	}
 	
 	method haceLoQueQuieras(){
 		if(self.estaDebil())
 			self.comer(alpiste, 20)
 			
		if(self.estaFeliz())
 			self.volar(8)
 	}
}

object pepon {
	var energia = 100


	method comer(cosa, gramos) { 
		energia += cosa.energiaPorGramo() * gramos
	}
  
 	method volar(kms) {
    	energia -= (1 + kms * 0.5)
  	}
  
 	method energia() { return energia }
 	
 	method salirAcomer() {
 		self.volar(5)
 		self.comer(alpiste, 80)
 		self.volar(5)
 	}
}
