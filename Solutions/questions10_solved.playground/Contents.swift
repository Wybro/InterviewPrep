//: Playground - noun: a place where people can play

import UIKit

/*
 Write a function that takes an array of ints and a single integer and returns a new array that only takes multiples of that number
 */

let nums: [Int] = [1,2,3,4,5,6,7,8,9,10]

func multiples(arr: [Int], num: Int) -> [Int] {
    
    return arr.filter { $0 % num == 0 }
}

print(multiples(arr: nums, num: 2))

extension Array where Element == Int {
    
    func multiples(num: Int) -> [Int] {
        
        return self.filter { $0 % num == 0 }
        
    }
}

print(nums.multiples(num: 2))

/*
 Normalize substring for strings
 */

extension String {
    
    func substring(start: Int, end: Int) -> String {
        let frontIndex = self.index(self.startIndex, offsetBy: start)
        let endIndex = self.index(self.startIndex, offsetBy: end)
        let range = frontIndex..<endIndex
        return String(self[range])
    }
    
}

let string = "apple"
print(string.substring(start: 2, end: 4))
print(String(string.reversed()))
print(string.uppercased())


extension Int {
    
    func reverse() -> Int {
        let numStr = String(self)
        let numSub = numStr.substring(start: 1, end: numStr.length())
        let negativeSign = numStr.substring(start: 0, end: 1)
        let reverseNum = "\(negativeSign)\(String(numSub.reversed()))"
        return Int("\(reverseNum)")!
    }
    
    func sum() -> Int {
        return self * (self + 1) / 2
    }
    
}

extension String {
    
    func length() -> Int {
        return self.characters.count
    }
}


let num = -123
print(num.reverse())
print(4.sum())


enum Cats {
    case MaineCoon
    
    case Siamese
}


func catPicker(breed: Cats) {
    breed == Cats.MaineCoon ? print("MaineCoon") : print("Not MaineCoon")
}

catPicker(breed: Cats.Siamese)
