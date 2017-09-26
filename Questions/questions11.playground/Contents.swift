//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct Fruit: Equatable, Comparable, CustomStringConvertible {
    var description: String {
        return name
    }
    
    static func <(lhs: Fruit, rhs: Fruit) -> Bool {
        return lhs.name < rhs.name
    }
    
    static func ==(lhs: Fruit, rhs: Fruit) -> Bool {
        return lhs.name == rhs.name
    }

    var name: String
    
}

let fruitArr: [Fruit] = [Fruit(name: "Apple"), Fruit(name: "Banana"), Fruit(name: "Kiwi"), Fruit(name: "Orange")]

print(fruitArr.sorted { $1 < $0 })

print(arc4random())


extension CountableClosedRange where Bound == Int {
    
    func random() -> Int {
        return Int(arc4random_uniform(UInt32(upperBound - lowerBound))) + lowerBound
    }
}

print((30...35).random())

