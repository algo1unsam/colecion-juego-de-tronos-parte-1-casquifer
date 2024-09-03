object daenerys{
    var capacidadInicial = 2
    var capacidad = capacidadInicial
    const property artefactos = []    
    const property posesiones = []

    method capacidad  (_numero) {
        capacidadInicial = _numero
    }

    method encontrar (_artefacto) {
        if (capacidad > 0) {
            capacidad -= 1
            artefactos.add(_artefacto)
        }
    }

    method volverACasa () {
        artefactos.forEach({n => castillo.artefactos.add(n)})
        artefactos.clear()
        self.capacidad(capacidadInicial)
    }

    method posee (_item) {
        posesiones.forEach({n => n == _item})
    }

    method historia () {
        posesiones.forEach({n => n})
    }

}

object espada {

}

object libro {
    
}

object collar {
    
}

object armadura {
    
}

object castillo {
    const property artefactos = []

    method totalArtefactos () {
        daenerys.artefactos.forEach ({n => daenerys.posesiones.add(n)})
        artefactos.forEach ({n => daenerys.posesiones.add(n)})
    }
}