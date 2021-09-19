import cosas.*

object casa{
	var property cosas = []
	
	method comprar(cosa){
		cosas.add(cosa)
	}
	
	method comprarCosas(lista){
		cosas.addAll(lista)
	}
	
	method quitarCosas(lista){
		cosas.removeAll(lista)
	}
	
	method quitarTodo(lista){
		cosas.clear(lista)
	}
	/*casa.cosas().size() */
	method cantidadDeCosasCompradas() = cosas.size()
	
	//method tieneComida() = cosas.filter({ c=> c.esComida() }).size()
	method tieneComida() = cosas.any { c=> c.esComida() }
	
	method vieneDeEquiparse() = cosas.last().esElectrodomestico() || cosas.last() > 5000
	
	//method esDerrochona() = cosas.map ({ c=> c.precio() }).sum() >= 9000
	method esDerrochona() = cosas.sum ({ c=> c.precio() }) >= 9000
	
	method compraMasCara() = cosas.max { c=> c.precio() }
	
	/*electrodomesticosComprados().asSet() */
	method electrodomesticosComprados() = cosas.filter{ c=> c.esElectrodomestico() }
	
	method malaEpoca() = cosas.all { c=> c.esComida() }
	
	
	method queFaltaComprar(lista){
		return cosas.asSet().difference(lista.asSet())
	}
	
	method faltaComida() = cosas.count { c=> c.esComida() } < 2
	
	method comidas() = cosas.filter { c=> c.esComida() }
	
	method gastoEnComida() = self.comidas().sum { c=> c.precio() }
	
	method electrodomesticos() = cosas.filter{ c=> c.esElectrodomestico() }
	
	method hayElectrodomesticosBaratos() = cosas.any{ c=> c.precio() < 3000 && c.esElectrodomestico()}
	
	method precioDeElectrodomesticos() = self.electrodomesticos().map { c=> c.precios() }
	
	method nivelEnAumento() = cosas.last().precio() * 2 >= cosas.firs().precio()
	
	method precioPrimeraComidaComprada() = self.comidas().first().precio()
	
	method indices() = ( 1 .. cosas.size() -1)
	
	method aumentoCreciente(){
		return self.indices().all{ i => cosas.get(i-1).precio() <= cosas.get(i).precio() }
	}
}