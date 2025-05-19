/*Tenemos a neo, morfeo y trinity que son los pasajeros de la nave, que pueden bajarse de la nave y eventualmente volver a subir.

Neo es el elegido, empieza con 100 de energia, pero cuando salta pierde la mitad de su energia. Su vitalidad es la décima parte de su energía
Morfeo no es el elegido. Su vitalidad es inicialmente 8, pero puede variar, empieza descansado y al saltar se cansa, pero si salta estando cansado, vuelve a quedar descansado.
Siempre que salta, su vitalidad disminuye en 1.
Trinity sabe decir su vitalidad, que siempre es 0. Saltar no la afecta. No es la elegida.*/
object neo {
    var energia = 100

    method saltar()= energia / 2
    method vitalidad() = energia / 10
    method esElElegido() = true 

}

object morfeo {
    var vitalidad = 8
    var descansado = true 

    method esElElegido() = false
    method vitalidad() = vitalidad
    /*method saltar(){
        if(self.descansado()){
            return vitalidad -1
                self.cansado()
        }else vitalidad-1
            self.descansado()
    }*/
    method saltar(){ // opcion correcta objetos
        descansado = not descansado
        vitalidad = (vitalidad -1).max(0) // cerciora que vitalidad no sea menor a 0
    } 
    
}

object trinity {
    var property vitalidad = 0
    
    method esElElegido() = false
    method saltar() {}


}