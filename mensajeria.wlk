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
const paquetesEnviados = [] 
const paquetesPendientes = [] 

   // comprobar---------------------------------------------------
    method enviarPaquete(unPaquete) {
      if(self.algunMensajeroPuedeEntregar(unPaquete)){
        paquetesEnviados.add(unPaquete)
      }else{
        paquetesPendientes.add(unPaquete)
      }
    }

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
            habria que chekear, porque solo necesito usar paquete , y primer mensajero
        */
    }
    method pesoDelUltimo() {
        return msjTrabajando.last().peso()
    }

    // ARREGLAR LO DEL PAQUETE, solo con eso bastaria, no hace falta agregar destino porque eso lo conoce el paquete
    method entregarPaquete(unPaquete , unMensajero, unDestino){
        return
            if(unPaquete.estaPago() and unDestino.puedePasar(unMensajero)){
                unMensajero.llevarADestino()
            }else{"El paquete no puede ser entregado!"}
    }

    // comprobar---------------------------------------------------
    method algunMensajeroPuedeEntregar(unPaquete) {
      return msjTrabajando.any({m => unPaquete.puedeLlevar(m)})
    }

    // comprobar---------------------------------------------------
    method todosLosQuePuedenLlevar(unPaquete) {
        return msjTrabajando.filter({m => unPaquete.puedeLlevar(m)})
    }

    // comprobar---------------------------------------------------
    method tieneSobrePeso() {
      return msjTrabajando.sum({m => m.peso()}) / msjTrabajando.size() > 500
      // mensajeros.map({m => m.peso()}).sum() / msjTrabajando.size() > 500
    }

    // comprobar---------------------------------------------------
    method facturacion() {
      return paquetesEnviados.sum({p => p.precio()})
    }
    // comprobar---------------------------------------------------
    method enviar(conjuntoDePaquetes) {
      conjuntoDePaquetes.forEach({p => self.enviarPaquete(p)})
    }

    // comprobar---------------------------------------------------
    method enviarPaquetePendienteMasCaro() {
        if(self.algunMensajeroPuedeEntregar(self.paqueteMasCaroPendiente())){
            self.enviarPaquete(self.paqueteMasCaroPendiente())
            paquetesPendientes.remove(self.paqueteMasCaroPendiente())
        }
      
    }
    method paqueteMasCaroPendiente() {
      return paquetesPendientes.max({p => p.precio()})
    }
}