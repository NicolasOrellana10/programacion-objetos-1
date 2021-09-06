import clientes.*
import remiseras.*

/*
 * ## Oficina de la cooperativa

Agregar al modelo un objeto que represente a la oficina desde la que la cooperativa despacha viajes.

En este modelo simplificado, cuando la oficina recibe un viaje, hay dos remiseras que pueden tomarlo: uno que tiene prioridad (al que llamaremos _primera opción_ o _primera remisera_) y otro que es la _segunda opción_ (o _segunda remisera_).

El objeto `oficina` debe entender estos mensajes:
- `asignarRemiseras(remisera1, remisera2)`: establece las remiseras de primera y de segunda opción.
- `cambiarPrimerRemiserarPor(remisera)`: cambia la remisera de primera opción por el que se indica.
- `cambiarSegundoRemiseraPor(remisera)`: cambia la remisera de segunda opción por el que se indica.
- `intercambiarRemiseras()`: intercambia las remiseras de primera y segunda opción. O sea, la que era primera pasa a segunda, y viceversa.
- `remiseraElegidaParaViaje(cliente, kms)`: devuelve la remisera que corresponde asignar a un viaje, dados el cliente y la cantidad de kilómetros.
  El criterio es el siguiente: si para ese viaje, el precio de la segunda remisera es menor al de la primera con una diferencia de más de 30 pesos, entonces se elige la segunda remisera; si no, se elige la primera.
 * 
 */

object oficina
{
	var opcion1
	var opcion2
	
	method asignarRemiseras(remisera1, remisera2)
	{
		opcion1 = remisera1
		opcion2 = remisera2
	}
	method cambiarPrimerRemiserarPor(remisera)
	{
		opcion1 = remisera
	}
	method cambiarSegundoRemiseraPor(remisera)
	{
		opcion2 = remisera
	}
	method intercambiarRemiseras()
	{
		self.asignarRemiseras(opcion2, opcion1)
	}
	
	method remiseraElegidaParaViaje(cliente, kms)
	{
		var precio1
		var precio2
		var diferencia
		precio1 = opcion1.precioViaje(cliente, kms)
		precio2 = opcion2.precioViaje(cliente, kms)
		
		if(precio1 > precio2)
		{
			diferencia = precio1 - precio2
			return(self.remiseraElegida(diferencia))
		}
		else
		{
			diferencia = precio2 - precio1
			return(self.remiseraElegida(diferencia))
		}
	}
	method remiseraElegida(valor)
	{
		if(valor >= 30)
		{
			return opcion2
		}
		else
		{
			return opcion1
		}
	}
}
