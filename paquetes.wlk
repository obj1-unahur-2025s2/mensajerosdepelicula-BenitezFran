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

    method precio() = 0
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
  method precio() = 0

}
// ------ Paqueton ------
object paquetonViajero {

//puenteDeBrooklyn, laMatrix
var destinosDelPaquete = []
var cantDestinosAcum = 0
var costo = 50 

  method registrarPago(unPago){
    costo -= unPago.min(costo)
  }

  method destino() {
    return destinosDelPaquete
  }

  method estaPago(){
    return  costo == 0
  }

  method agregarUnDestino(unDestino) {
    destinosDelPaquete.add(unDestino)
    cantDestinosAcum += 1
    costo += 100
  }

//  COMPROBAR FUNCIONALIDAD
  method puedeLlevar(unMensajero){

    return destinosDelPaquete.all({destino => destino.puedePasar(unMensajero)}) && self.estaPago()
  }

  method precio() = costo

}
/*
paquetonViajero.costo()
paquetonViajero.agregarUnDestino(puenteDeBrooklyn)
paquetonViajero.agregarUnDestino(laMatrix)
paquetonViajero.costo()
paquetonViajero.registrarPago(50)
*/

