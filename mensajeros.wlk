import destinos.*
import paquetes.*
import mensajeria.*

// ================= MENSAJEROS ================= //

// ------ ROBERTO TOTOTO------
object roberto {

var vehiculo = bici

    method cambiarVehiculo(unVehiculo) {
      vehiculo = unVehiculo
    }

    method peso() = 90 + vehiculo.peso()

    method puedeLlamar() = false

    method llevarADestino() {
        return "El paquete ha sido entregado con exito!"
    }

}
object bici {
    method peso() = 5
}
object camion {

var acoplado = 1

    method peso() = 500 * (acoplado.max(1))

    method cantAcoplados(cant) {
      acoplado = cant
    }


}

// ------ CHUCK NORRIS ------
object chuckNorris {


    method puedeLlamar() = true
    method peso() = 80

    method llevarADestino() {
        return "El paquete ha sido entregado con exito!"
    }

}
// ------ NEO ------
object neo {

var tieneCredito = false

    method puedeLlamar() = tieneCredito

    method peso() = 0

    method cargarCredito() {
        tieneCredito = !tieneCredito 
    }
    method llevarADestino() {
        return "El paquete ha sido entregado con exito!"
    }

}