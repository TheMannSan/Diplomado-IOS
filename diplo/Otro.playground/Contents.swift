//: Playground - noun: a place where people can play

import UIKit
// closure: funcion anonima que puede ser usado en otra funcion
var str = "Hello, playground"
// firma
func suma(valor: Int, sumaFunc: (Int) -> Int) -> Int {
    return sumaFunc(valor )
}
// declaracion de closure
let closure = {(valor: Int) -> Int in
    return valor + 5
}

suma(valor : 10,sumaFunc: closure)


let closure2 = {(valor: Int) -> Int in
    print("ejele, no suma")
    return 0
}

suma(valor : 10,sumaFunc: closure2)


suma(valor: 20, sumaFunc: {(valor: Int) -> Int return valor +10 })
