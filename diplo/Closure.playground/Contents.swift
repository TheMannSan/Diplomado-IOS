//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let sumClosure = {(numbers: [Int]) -> Int in
    
    var total = 0
    for number in numbers{
        total = total + number
    }
    
    return total
}


let sum = sumClosure([1,2,3,4,5])
print (sum)


//closure sin parametros

let printClosure = {() -> Void in
    print("este closure no regresa nada y no recibe nada ")
}



///recibe pero no regresa

let  printClosure2 = {(cadena: String) -> Void in
print(cadena)
    
}
// no recibe pero regresa

let printClosure3 = {() -> Int in
   return 3
}

var letras = ["a","z","x","w"]
letras.sorted()


///// editar un sort
letras.sort{(letra1,letra2) -> Bool in
    return letra1 > letra2
}


let nombres = ["juan","manuel","pedro","lola"]
let nombreCompleto = nombres.map{(nombre) -> String in
    return nombre + "sanchez"
}


let nombreCompleto2 = nombres.map{$0 + "sanchez"}

let number = [5,2,3,5,7,235,23]

var lessTen = number.filter {(number) -> Bool in
    return number < 10
}

let lessTen2 = number.filter {$0 < 10 }

var total = 0

 total = number.reduce(0){(currentTotal, newValue) -> Int in
    
    return currentTotal + newValue
    
    let total2 = number.reduce(0, {$0 + $1})

}









