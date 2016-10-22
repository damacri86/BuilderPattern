# Builder Pattern

![Pattern](https://img.shields.io/badge/Creational-Patterns-green.svg)
![Languages](https://img.shields.io/badge/Language-swift-green.svg)

### Motivación
¿Ya te llegó aquel día en el que construir un objeto se convirtió en un largo inicializador con un tedioso proceso de escribir uno a uno todos lo parametros de entrada? A mi si.

Y la verdad que no quedaba ni bonito, ni elegante, ni me terminaba de gustar por más que diera saltos de línea en Objective C. En Swift ya ni os cuento.

Pero con cada problema llega un patrón.

### Idea
**Separar la construcción compleja de un objeto de su representación.**

### Problema

Pasar de:

```swift
var spiderman = SuperHero(name: "Spiderman", superPower: "Spider Powers", alterEgo: "Peter Parker")
```

a:

```swift
let details = SuperHeroBuilder { builder in
    
    builder.name = "Spiderman"
    builder.superPower = "Spider Powers"
    builder.alterEgo = "Peter Parker"
}

var spiderman = SuperHero(builder: details)
```

### Solución

Dentro del playground podréis ver la implementación de este pequeño ejemplo de una forma corta, elegante y fácil de entender. Separando el constructor de un súper héroe de su propia representación.
