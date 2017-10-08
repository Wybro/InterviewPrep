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
print(arrr.flatMap { $0 })
print(perfSquare(arr: arrr))

let arra: [[[Int]]] = [[[1],[1],[2]], [[2],[3]], [[1],[7],[8]]]
print(arra.flatMap { $0.flatMap { $0 } })

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
        // return String(self.substring(with: range))
    }
}


let string = "Spoogity Sam"
print(string.reverse())
print(string.substring(start: 9, end: 20))


func arrPrint(arr: [[Int]]) {
    let flat = arr.flatMap { $0 }
    let doubleFlat = flat.flatMap { $0 }
    if flat == doubleFlat {
        print(flat)
    } else {
        arrPrint(arr: arr.flatMap { $0 })
    }
    
}

let array: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
arrPrint(arr: array)


extension Int {
    
    func reverse() -> Int {
        let numStr = "\(self)"
        let splitIndex = numStr.index(numStr.startIndex, offsetBy: 1)
        let range = splitIndex..<numStr.endIndex
//        let reverseStr = String(String(numStr[range]).reversed())
//        return Int("-\(reverseStr)")!
        return Int("-\(String(String(numStr[range]).reversed()))")!
    }
}

let num = -674
print(num.reverse())


