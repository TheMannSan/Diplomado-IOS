//: Playground - noun: a place where people can play

import Foundation

class Alumno: CustomStringConvertible {
    var nombre: String = "nadie"
    var description : String{
        return " yo soy \(nombre)"
    }
    
}

var luis = Alumno()
print(luis)

struct empleado: Equatable, Comparable,Codable {
    static func < (lhs: empleado, rhs: empleado) -> Bool {
         return lhs.nombre == rhs.nombre && lhs.apellido == rhs.apellido
    }
    
    var nombre: String
    var apellido : String
    var edad: Int
    
    static func == (lhs: empleado, rhs: empleado) -> Bool{
       return lhs.edad < rhs.edad
    }
}

var godin1 = empleado(nombre: "juan", apellido: "pestañas", edad: 23)
var godin2 = empleado(nombre: "Manuel", apellido:  "sanchez ",edad: 24)
var godin3 = empleado(nombre: "daniel", apellido:  "sanchez ",edad: 25)
var godin4 = empleado(nombre: "grecia ", apellido:  "sanchez ",edad: 26)
var godin5 = empleado(nombre: "german", apellido:  "sanchez ",edad: 27)

godin1 == godin2


var empleados = [godin1,godin2,godin3,godin4,godin5]

let empleadosOrdenados = empleados.sorted(by: <)
for empleado in empleadosOrdenados{
    print(empleado)
}

let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(godin1), let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
    
}





