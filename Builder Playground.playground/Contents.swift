// Example of the Builder Pattern
// This is a very usefull creational patter used to create complex objects

class SuperHeroBuilder {
    
    var name: String?
    var superPower: String?
    var alterEgo: String?
    
    typealias BuilderClosure = (SuperHeroBuilder) -> ()
    
    init(buildClosure: BuilderClosure) {
        
        buildClosure(self)
    }
}

struct SuperHero: CustomStringConvertible {
    
    let name: String
    let superPower: String
    let alterEgo: String
    
    init?(builder: SuperHeroBuilder) {
        
        if let name = builder.name, let superPower = builder.superPower, let alterEgo = builder.alterEgo {
            
            self.name = name
            self.superPower = superPower
            self.alterEgo = alterEgo
        
        } else {
            
            return nil
        }
    }
    
    var description: String {
        
        return "Super Hero: \(self.name), Super Power: \(self.superPower), Alter Ego: \(self.alterEgo)"
    }
}

// Example of use

let details = SuperHeroBuilder { builder in
    
    builder.name = "Spiderman"
    builder.superPower = "Spider Powers"
    builder.alterEgo = "Peter Parker"
}

var spiderman = SuperHero(builder: details)
