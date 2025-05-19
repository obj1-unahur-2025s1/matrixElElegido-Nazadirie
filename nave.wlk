import matrix.*


/*Cuántos pasajeros hay
El pasajero de mayor vitalidad
Si está equilibrada en vitalidad, lo que sucede cuando ninguno de los pasajeros tiene más que el doble de vitalidad que cualquier otro pasajero.
Si el elegido está en la nave*/

object nave {
    var pasajeros = #{neo,morfeo,trinity}

    method cuantosPasajeroshay() {
        return pasajeros.size()
    }
    method vitalidadEquilibrada(){
        pasajeros.any({p=> (p.vitalidad()> p.vitalidad()*2)})
        
    }

    method pasajeroDeMayorVitalidad(){
        //pasajeros.map({p=>p.vitalidad()}).max() devuelve map transforma lista de pasajeros a su vitalidad y devuelve la mas alta con max
        pasajeros.max({ p => p.vitalidad()}) // devuelve el pasajero de mayor vitalidad
    }

    method estaElElegidoEnLaNave() {

        // pasajeros.contains(neo) ambas bien 
        pasajeros.any({ p=> p.esElElegido()})
    }

    method chocarNave(){
        pasajeros.forEach({ p=> p.saltar()})
        pasajeros.clear()
    }

    method acelerar() {
        pasajeros.filter({p => !p.esElElegido()}).forEach(pasajeros.saltar()) // devuelve sub lista y a esa sub lista aplica el forEach que los hace saltar
       // pasajeros.remove(neo)
    }
}

/*Cuando la nave choca, todos sus pasajeros saltan para salvarse y se van de la nave.
Cuando la nave acelera, todos sus pasajeros, excepto el elegido, saltan de alegría y permanecen en la nave.*/