//: Playground - noun: a place where people can play

import UIKit

let val = 2
switch val {
case 1:
    print("false")
case 2:
    print("true")
default:
    print("false")
}

val == 2 ? print("true") : print("false")

let someOptional: String? = nil
let someString: String = someOptional ?? "Swift"

let arr: [String] = ["A","B","C"]

for char in arr {
    print(char)
}

for (index, char) in arr.enumerated() {
    print(index,char)
}

arr.enumerated().forEach { print($0) }

print(arr.sorted { $1 < $0 })

let arrr: [[Int]] = [[1,1,2], [2,3], [1,7,8]]

func perfSquare(arr: [[Int]]) -> [Bool] {
     return arr.map { sqrt(Double($0.reduce(0,+))).truncatingRemainder(dividingBy: 1) == 0 }
}

print(perfSquare(arr: arrr))



extension String {
    func reverse() -> String {
        return String(self.reversed())
    }
    
    func substring(start: Int, end: Int) -> String {
        var realStart = start < 0 ? 0 : start
        var realEnd = end > self.characters.count ? self.characters.count : end
        let startInd = index(startIndex, offsetBy: realStart)
        let endInd = index(startIndex, offsetBy: realEnd)
        let range = startInd..<endInd
        return String(self[range])
    }
}

let string = "Spoogity Sam"
print(string.reverse())
print(string.substring(start: 9, end: 20))
