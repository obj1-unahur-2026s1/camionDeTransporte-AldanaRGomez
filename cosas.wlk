object cosas { 

    
} 

object knightRider{

    method peso() = 500 
    method nivelDePeligrosidad() = 10 
} 

object bumblebee{

    method peso() = 800 
    method nivelDePeligrosidad() {} 
} 

object paqueteDeLadrillos{ 
    var cantidadDeLadrillos = 1
    
    method cantidadDeLadrillos() = cantidadDeLadrillos
    method peso() = cantidadDeLadrillos *2 
    method nivelDePeligrosidad() = 2 
} 

object arenaAGranel{ 
    var peso = 20

    method peso() = peso 
    method nivelDePeligrosidad() = 1
} 

object bateriaAntiaerea{ 
    var estaConMisiles = false 

    method estaConMisiles() = estaConMisiles 

    method cargarMisiles() {
        estaConMisiles = true
    } 


    method peso() {
        if (self.estaConMisiles() ){
            300
        } else {
            200
        }
    } 
    method nivelDePeligrosidad() { 
        if (self.estaConMisiles() ){
            100
        } else {
            0
        }
    } 
    
} 

object contenedorPortuario{ 
    const cosasContenidas = [] 

    method estaVacio() = cosasContenidas.isEmpty()
    method tieneCosasDentro() = !self.estaVacio()

    method peso() = 100 + cosasContenidas.sum({ c => c.peso()}) 

    method nivelDePeligrosidad() {
        if (self.tieneCosasDentro()) {
            self.objetoMasPeligrosoContenido().nivelDePeligrosidad()
        } else {
            0
        }
    } 

    method objetoMasPeligrosoContenido() {
        return cosasContenidas.max({ c => c.nivelDePeligrosidad()})
    }
} 

object residuosRadioactivos{ 
    var peso = 10

    method peso() = peso
    method nivelDePeligrosidad() =200 
} 

object embalajeDeSeguridad{

}