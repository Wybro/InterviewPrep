//: Playground - noun: a place where people can play

import UIKit

/*
 Flex
 */

let constant: Int = 1
var variable: Int = 1
var array: [Int] = []
var array2 = [Int]()
let range = 0...100
let strArr: [String] = range.map { "\($0)" }

//for (index,value) in strArr.enumerated() {
//    print(index,value)
//}

let int = range.map { $0 }.reduce(0,+)
print(int)


extension Int {
    func sum() -> Int {
        return self * (self + 1) / 2
    }
    
}

let int1 = 100
let sum1 = int1.sum()

typealias Closure = () -> ()

func time(numLoops: Int = 1000, closure: Closure) -> TimeInterval {
    let now = Date()
    (0..<numLoops).forEach { _ in closure() }
    return -now.timeIntervalSinceNow
}


//let a = time {
//    let int = range.map { $0 }.reduce(0,+)
//}
//
//let b = time {
//    let int1 = 100
//    let sum1 = int1.sum()
//}

let thing: String? = nil
let anotherThing = thing ?? "cat"

1 == 2 ? print("true") : print("false")

let us = 1
let them = 0

us > them ? print("Good work boys") : print("You should have tried harder")

struct GloryDay {
    let time: String
}

let gloryDays: [GloryDay] = [GloryDay(time: "The Past"), GloryDay(time: "The Future")]


extension String {
    func bestTimeOfYourLife() -> String {
        let splitIndex = self.index(self.startIndex, offsetBy: 4)
        let range = splitIndex..<self.endIndex
        return String(self[range])
    }
}

gloryDays.forEach { gloryDay in
    gloryDay.time.bestTimeOfYourLife() == "Past" ? print("You must be sumThic because your best days are in the past.") : print("You must be the Wybros because your future is maad bright")
}

let string = "Some Thick"
let split = string.split(separator: " ")
print(split.joined(separator: " "))





