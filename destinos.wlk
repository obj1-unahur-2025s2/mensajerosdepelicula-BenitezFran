import mensajeros.*

// ================= DESTINOS ================= //

// ------ Puente de Brooklyn ------
object puenteDeBrooklyn {

    method puedePasar(unMensajero) {
        return unMensajero.peso() < 1000
    }
}
// ------ La Matrix ------

object laMatrix {

    method puedePasar(unMensajero) {
        return unMensajero.puedeLlamar()
    }
}