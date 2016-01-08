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
        var velocidadStr : String = ""
        
        if self.velocidad == .Apagado {
            self.velocidad = .VelocidadBaja
            velocidadStr = "Velocidad baja"
            
        }else if self.velocidad == .VelocidadBaja{
            self.velocidad = .VelocidadMedia
            velocidadStr = "Velocidad media"
            
        }else if self.velocidad == .VelocidadMedia{
            self.velocidad = .VelocidadAlta
            velocidadStr = "Velocidad alta"
        }else if self.velocidad == .VelocidadAlta{
            self.velocidad = .VelocidadMedia
            velocidadStr = "Velocidad media"
        }
        return (self.velocidad.rawValue, "\(velocidadStr)")
        
    }
}

//Prueba de nuestra clase auto

//Creamos la instancia
var auto = Auto()

//Imprimimos el valor inicial
print("1. \(auto.velocidad.rawValue), \(auto.velocidad)")

//Iteramos cambiando la velocidad una vez por iteracion hasta 20 repeticiones
for i in 2...20{
    var resultado = auto.cambioDeVelocidad()
    print("\(i). \(resultado)")
}

