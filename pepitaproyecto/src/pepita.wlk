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
 	
 	/**method energiaQueOtorga() {
 		var base = 20
 		if (salsa) = base
 		if(queso) = base
 		return base
 	}*/
}


object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}


object alcaucil {
	method energiaPorGramo() { return 20 }
}

object sorgo {
	method energiaPorGramo() { return 9 }
}

object bigMac {
	method energiaPorGramo() { return 2 }
}

object canelones {
	
}
