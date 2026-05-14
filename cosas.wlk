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

    method peso() {
        if (self.estaConMisiles()){
            300
        } else {
            200
        }
    } 
    method nivelDePeligrosidad() {
        if (self.estaConMisiles()){
            1
        } else {
            0
        }
    } 

    method estaConMisiles() {
        return true
    }
} 

object contenedorPortuario{ 
    var cosasContenidas

    method peso() = 10 + cosasContenidas 
    method nivelDePeligrosidad() = 10 
} 

object residuosRadioactivos{ 
    var peso = 10

    method peso() = peso
    method nivelDePeligrosidad() =200 
} 

object embalajeDeSeguridad{

    method peso() = 500 
    method nivelDePeligrosidad() = 10 
}