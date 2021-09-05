import aves.*
import comidas.*

object roque {
	var ave
	
	method ave(unAve){
		ave = unAve
	}
	method ave(){
		return ave
	}
	
	method entrenar(){
		ave.volar(10)
		ave.comer(alpiste, 300)
		ave.volar(5)
	}
	
}
