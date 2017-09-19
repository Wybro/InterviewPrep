//: Playground - noun: a place where people can play

import UIKit

/*
zip problem
 */

let numArr: [Int] = [1,2,3,4,5,6]
let letterArr: [String] = ["A","B","C","D","E","F"]

for (num, letter) in zip(numArr, letterArr) {
    print("\(num,letter)")
}

/*
 to round a decimal to a specified level of precision: round(double * (places of precision ex: 10 = 2, 100 = 3)) / places of precision
 */
let double: Double = 4.59
let rounded = round(double * 10) / 10

/*
 Reverse a string of numbers
 */

let nums = -123

let numStr = "\(nums)"
let splitIndex = numStr.index(numStr.startIndex, offsetBy: 1)
let range1 = numStr.startIndex..<splitIndex
let range2 = splitIndex..<numStr.endIndex
print(numStr[range1] + numStr[range2].reversed() + (nums % 2 == 0 ? "even" : " not even"))


/*
 Take an array of strings, double them and filter out the ones that are longer than 6 characters
 */

extension String {
    func double() -> String {
        return self + self
    }
    
    func length() -> Int {
        return characters.count
    }
}

let strArr: [String] = ["A", "Cat", "Jumped", "Else", "Football", "Tinder", "Boy", "Girl", "Do", "It"]
print(strArr.filter { $0.length() < 3 }.map { $0.double() })

/*
 Two arrays of strings, array1 and array2. Given these two arrays, return the unique elements that are in one array and then the unique
 elements from the second array and then the shared elements
 */

let array1: [String] = ["An", "Apple", "Is", "A", "Fruit", "Apple"]

func uniqueEle(_ arr: [String]) -> [String] {
    var elements = Set<String>()
    for element in arr {
        elements.insert(element)
    }
    return Array(elements)
}

print(uniqueEle(array1))

