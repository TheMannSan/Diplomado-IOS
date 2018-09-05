//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


print("list")

let url = URL(string: "http://www.apple.com")!

let task = URLSession.shared.dataTask(with: url){(data,response,error) in
    
    if let data = data , let string = String(data: data, encoding: .utf8){
        print(string)
    }
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true

