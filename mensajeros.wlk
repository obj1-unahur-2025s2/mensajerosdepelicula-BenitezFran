import destinos.*
import paquetes.*

// ================= PROGRAMA ================= //
/*
mensajeria.agregarATodos()

mensajeria.esGrande()

mensajeria.puedeSerEntregadoPorElPrimero()
*/
object mensajeria {

const msjTrabajando = []

    method mensajeros() {
        return msjTrabajando
    }

    method agregarMensajero(unMensajero) {
        msjTrabajando.add(unMensajero)
    }
    method quitarMensajero(unMensajero) {
        msjTrabajando.remove(unMensajero)
    }
    method despedirATodos() {
        msjTrabajando.clear()
    }
    method agregarATodos() {
        msjTrabajando.addAll([neo, roberto, chuckNorris])
    }
    method esGrande() {
        return msjTrabajando.size() > 2
    }
    method puedeSerEntregadoPorElPrimero() {
        return self.entregarPaquete(paquete , msjTrabajando.first(), laMatrix)
    }
    method pesoDelUltimo() {
        return msjTrabajando.last().peso()
    }

    method entregarPaquete(unPaquete , unMensajero, unDestino){
        return
            if(unPaquete.estaPago() and unDestino.puedePasar(unMensajero)){
                unMensajero.llevarADestino()
            }else{"El paquete no puede ser entregado!"}
    }
}

// ================= MENSAJEROS ================= //

// ------ ROBERTO TOTOTO------
object roberto {

var peso = 90

    method camion(cantAcoplados){
        peso = (500 * cantAcoplados) + peso
    }
    method bici() {
        peso += 5
    }

    method peso() = peso 
    method puedeLlamar() = false

    method llevarADestino() {
        return "El paquete ha sido entregado con exito!"
    }

    // volveralPesoNormal para probar
    // method pesoNormal() {
    //     peso = 90
    // }

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