import mensajeros.*
import paquetes.*
import destinos.*

// ================= PROGRAMA ================= //
/*
mensajeria.agregarATodos()

mensajeria.esGrande()

mensajeria.puedeSerEntregadoPorElPrimero()
*/

// ================= MENSAJERIA ================= //
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
    method puedeSerEntregadoPorElPrimero(unPaquete, unDestino) {
        return self.entregarPaquete(unPaquete , msjTrabajando.first(), unDestino)
        /*
            
        */
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