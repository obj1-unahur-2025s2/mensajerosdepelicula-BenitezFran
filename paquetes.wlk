import destinos.*
import mensajeros.*
// ================= PAQUETES ================= //

// ------ Paquete de Prueba ------
object paquete {

var paquetePagado = true

    method estaPago() = paquetePagado
    
    // solo para negar
    method noEstaPago(){
        paquetePagado = !paquetePagado
    }
    method puedeLlevar(unMensajero) = true
}

// ------ Paquetito ------
object paquetito {
  
  // en clase, se penso en agregar un destino directamente
var unDestino = laMatrix

  method destino() {
    return unDestino
  }
  method estaPago() = true
  method puedeLlevar(unMensajero) = true

}
// ------ Paqueton ------
object paquetonViajero {

//puenteDeBrooklyn, laMatrix
var destinosDelPaquete = []
var cantDestinosAcum = 0
var precio = 50 

  method registrarPago(unPago){
    precio -= unPago.min(precio)
  }

  method destino() {
    return destinosDelPaquete
  }

  method estaPago(){
    return  precio == 0
  }

  method agregarUnDestino(unDestino) {
    destinosDelPaquete.add(unDestino)
    cantDestinosAcum += 1
    precio += 100
  }

//  COMPROBAR FUNCIONALIDAD
  method puedeLlevar(unMensajero){

    return destinosDelPaquete.all({destino => destino.puedePasar(unMensajero)})
  }

  method costo() = precio

}
/*
paquetonViajero.costo()
paquetonViajero.agregarUnDestino(puenteDeBrooklyn)
paquetonViajero.agregarUnDestino(laMatrix)
paquetonViajero.costo()
paquetonViajero.registrarPago(50)
*/

