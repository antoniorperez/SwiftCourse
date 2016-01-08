//: Playground  para el Velocimétro

import UIKit


//Definicion del enumerado de velocidades
enum Velocidades : Int{
    case Apagado = 0,VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

//La clase Auto
class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()->(Int, String){
        if self.velocidad == .Apagado {
            self.velocidad = .VelocidadBaja
            
        }else if self.velocidad == .VelocidadBaja{
            self.velocidad = .VelocidadMedia
            
        }else if self.velocidad == .VelocidadMedia{
            self.velocidad = .VelocidadAlta
        }else if self.velocidad == .VelocidadAlta{
            self.velocidad = .VelocidadMedia
        }
        return (self.velocidad.rawValue, "\(self.velocidad)")
        
    }
}

//Prueba de nuestra clase auto

//Creamos la instancia
var auto = Auto()

//Imprimimos el valor inicial
print("\(auto.velocidad.rawValue), \(auto.velocidad)")

//Iteramos cambiando la velocidad una vez por iteracion hasta 20 repeticiones
for i in 1...20{
    var resultado = auto.cambioDeVelocidad()
    print("\(resultado.0), \(resultado.1)")
}

