//: Playground - noun: a place where people can play

import UIKit

let constant: String = "Cat"
var variable: Int = 2

// array
var array: [Int] = []
let array2 = [Int]()

    // add
    array.append(4)
    // remove
    array.remove(at: 0)
    // contains
    array.contains(4)


// dict
var dict: [String:Bool] = [:]
let dict2 = [String:Bool]()

    // add
    dict["Cat"] = true
    // remove
    dict["Cat"] = nil
    // contains
    dict["Cat"] != nil

// sets
var set: Set<String> = []
let set2 = Set<String>()

    // add
    set.update(with: "Cat")
    // remove
    set.remove("Cat")
    // contains
    set.contains("Cat")



enum Directions {
    case North, East, South, West
}

extension String {
    func length() -> Int {
        return self.characters.count
    }
}


extension Int {
    func sum() -> Int {
        return self * (self + 1) / 2
    }
    
    func reverse() -> Int {
        guard self < 0 else { return Int(String("\(self)".reversed()))!}
        
        let numStr = "\(self)"
        let splitIndex = numStr.index(numStr.startIndex, offsetBy: 1)
        let range = splitIndex..<numStr.endIndex
        return Int("-\(String(String(numStr[range]).reversed()))")!
    }
}

print(-45.reverse())
print(45.reverse())


struct Person: Equatable, Comparable, CustomStringConvertible {
    
    let name: String
    let age: Int
    
    var description: String {
        return "\(name,age)"
    }
    
    static func <(lhs: Person, rhs: Person) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.age == rhs.age
    }
    
    static func merge(person1: Person, person2: Person) -> Person {
        return Person(name: person1.name + person2.name, age: person1.age + person2.age)
    }
    
}


let people: [Person] = [Person(name:"Kyle", age: 19), Person(name:"Connor", age: 21)]

print(people.reduce(Person(name: "", age: 0), Person.merge))
print(people.reduce(Person(name: "", age: 0)) { Person.merge(person1: $0, person2: $1) } )

typealias Closure = () -> ()

func timer(_ loops: Int, closure: Closure) -> TimeInterval {
    let now = Date()
    (0..<loops).forEach { _ in closure() }
    return -now.timeIntervalSinceNow
}

print(timer(10) { timer(10) {4.sum() } })


typealias Num = Int

let num: Num = 4

func something() {
    defer {
        print("Defer")
    }
    defer {
        print("Defer2")
    }
    print("Here")
}

something()

let people1 = (0..<10).map { Person(name: "\($0)", age: $0) }
print(people1)

let arr: [String] = ["Cat","Dog","Kyle"]

for str in arr {
    print(str)
}

for (index,str) in arr.enumerated() {
    print(index,str)
}

/* Data Types
 Uppercased
 Int
 String
 Bool
 Float
 Double
 [Int]
 [String]
 Custom structs
 
 Lowercase:
 func
 extension
 class
 struct
 enum
 typealias
 
 
 */


