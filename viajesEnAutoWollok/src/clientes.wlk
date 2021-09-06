import remiseras.*
import oficina.*

/*
La cooperativa de remiseros de Doctor Olaechea nos pide que le armemos un programa para manejar cuánto cobrar los viajes.
La cooperativa pacta con cada cliente el precio por kilómetro que le va a cobrar. Estos son los valores que arregló con algunos clientes
- **Ludmila**: 18 pesos el kilómetro, valor fijo e inamovible.
- **Ana María**: 30 pesos el kilómetro si está económicamente estable, 25 pesos el kilómetro en caso contrario. Se sabe en cada momento si Ana María está o no económicamente estable.
- **Teresa**: arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor.
 */

object ludmila {
	
	method precioPactadoPorKm()
	{
		return 18
	}
}

object anaMaria {
	/* economicamenteEstable(estado) ingresar 1 o 0 segun corresponda usar el metodo */
	var estado
	
	method economicamenteEstable(valor){
		estado = valor
		return estado
	}
	
	method precioPactadoPorKm(){
		if (estado == 1){
			return 30
		}
		else{
			return 25
		}
	}
}

object teresa {
	/* precio pactado 22*/
	var precio = 22
	/* costoPorKmVariable(valor) ingresar precio variable por km */
	method costoPorKmVariable(valor){
		precio = valor
		return precio
	}
	
	method precioPactadoPorKm(){
		return precio
	}
}

/* *Melina** es una cadeta que trabaja para las otras clientas de la remisería. En cada momento trabaja para una clienta, se debe informar para quién. El precio por kilómetro pactado con Melina es 3 pesos menos que el precio de la clienta para quien esté trabajando en cada momento.
 */
object melina
{
	var reemplazo
	method reemplazo(cliente)
	{
		reemplazo = cliente.precioPactadoPorKm()
		return cliente
	}	
		
	method precioPactadoPorKm()
	{
		return (reemplazo - 3)
	}
}