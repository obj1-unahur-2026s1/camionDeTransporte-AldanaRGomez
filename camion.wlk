import cosas.* 

object camion { 
    const cosasCargadas = [] 
    
    method pesoTotal() = 1000 + cosasCargadas.sum({ c => c.peso() }) 
    method pesoMaximo() = 2500

    method pesoDeCadaCosaCargadaEsPar() {
        return cosasCargadas.all({ p => p.peso().even() })
    } 

    method primerCosaCargadaConNivelDePeligrosidad(unNivel) {
        return cosasCargadas.find({ c => c.nivelDePeligrosidad() == unNivel })
    } 

    method cosasQueSuperanPeligrosidad(unNivel) {
        return cosasCargadas.filter({ c => c.nivelDePeligrosidad() > unNivel})
    } 

    method cosasMasPeligrosasQue(unaCosa) {
        return cosasCargadas.filter({ c => c.nivelDePeligrosidad() > unaCosa.nivelDePeligrosidad()})
    } 

    method estaExcedidoElCamion() {
        return self.pesoTotal() > 2500
    } 

    method puedeCircularEnRuta(nivelMaximoDePeligro) {
        return !self.estaExcedidoElCamion() and !cosasCargadas.any({ c => c.nivelDePeligrosidad() > nivelMaximoDePeligro})
    }


}