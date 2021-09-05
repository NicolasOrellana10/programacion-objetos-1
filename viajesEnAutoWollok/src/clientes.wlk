import remiseras.*



object ludmila {
	
	method precioPactadoPorKm()
	{
		return 18
	}
}

object anaMaria {
	
	method estable(estado){
		return estado
	}
	
	method precioPactadoPorKm(){
		if (self.estable(true)){
			return 30
		}
		else{
			return 25
		}
	}
}