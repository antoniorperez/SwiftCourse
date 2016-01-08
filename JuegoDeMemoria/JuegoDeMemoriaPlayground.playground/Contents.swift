//: Playground para ejercicio de Juego de Memoria de la semana 2 del curso sobre programación para swift

import UIKit


//Creamos el rango de 0 a 100
var rango = 1...100


//Iteramos por el rango
for num in rango{
    
    //Si es multiplo de 5
    if num % 5 == 0{
        print("\(num) Bingo!!!")
    //Si es par
    }
    if num % 2 == 0 {
        print("\(num) par!!!")
    //Si es impar
    }
    if num % 2 != 0{
        print("\(num) impar!!!")
    //Si está entre 30 y 40 (ambos inclusive)
    }
    if num >= 30 && num <= 40{
        print("\(num) Viva Swift!!!")
    }
    
}
