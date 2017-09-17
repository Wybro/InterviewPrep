//: Playground - noun: a place where people can play

import UIKit

// Array of Ints, Dictionary of Ints and Booleans, Set of Strings

var ints: [Int] = []
var ints2 = [Int]()
var ints3: [Int] = [0,1,2]
var ints4 = [0,1,2]

var dict: [Int:Bool] = [:]
var dict2 = [Int:Bool]()
var dict3: [Int:Bool] = [2:true, 4: false]

var set: Set<String> = []
var set1 = Set<String>()
var set2: Set<String> = ["Kyle","is","cool"]



// array of optional strings, give back the array of just strings

var opArr: [String?] = ["Kyle", nil, "Joe", "Connor", nil, "CnorMan"]

let arr = opArr.flatMap { $0 }
print(arr)


// zip: array of strings in a particular order, an array of integers where the integer corresponds to the number of times the string occurs in a text file

let strArr: [String] = ["Kyle","is","the","cool","guy","things","Joe"]
let intArr: [Int] = [4,6,9,10,4,2,3]
var swiftDict = [String:Int]()

for (str, int) in zip(strArr, intArr) {
    swiftDict[str] = int
    print(str, int)
}


print(swiftDict)

let reducedArr = strArr.reduce("", { $0 + " " + $1 } )
print(reducedArr)

let newStrArr = strArr.filter { $0.characters.count > 3 }.map { $0.uppercased() }
print(newStrArr)
