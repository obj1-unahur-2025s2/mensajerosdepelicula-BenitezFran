// ================= PAQUETES ================= //

// ------ Paquete de Prueba ------
object paquete {

var paquetePagado = true

    method estaPago() = paquetePagado
    
    // solo para negar
    method noEstaPago(){
        paquetePagado = !paquetePagado
    }

}