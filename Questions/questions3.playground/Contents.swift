/*
 9/14/17
 Interview Questions 3
 
 Topics covered:
 - String manipulation (substrings)
 ------------------------------------------------------------------------
 */

import Foundation

/*
 - Given: Array of strings of various lengths
 - Task: Return array of strings where the last 2 characters are uppercased
 * Hint: Need at least 2 characters to perform this
 * Hint: Write function to make this change to a single string
 * Hint: String indexing requires .index, where you have to specify str.startIndex / .endIndex
    - There is a variant of this function that takes an offset
*/

let strArr: [String?] = ["Do", "Connor", "Kyle", "A", "", nil]


func upperStr(str: String) -> String {
  // string has two characters to be uppercased
    let startingIndex = str.startIndex
    let endingIndex = str.index(str.endIndex, offsetBy: -2)
    let range = startingIndex..<endingIndex
    return String(str[range]) + (str.lastTwo().uppercased())
}


extension String {
    
    func length() -> Int {
        return self.characters.count
    }

    func lastTwo() -> String {
        let startingIndex = self.index(self.endIndex, offsetBy: -2)
        let endingIndex = self.endIndex
        let range = startingIndex..<endingIndex
        
        return String(self[range])
        
    }
    
    func wholeStr() -> String {
        let endStartIndex = index(endIndex, offsetBy: -2)
        let firstRange = startIndex..<endStartIndex
        let secondRange = endStartIndex..<endIndex
        
        return String(self[firstRange] + self[secondRange].uppercased())
    }
}

struct Connor {
    
}

let a = Connor()

typealias Kyle = Connor


let b = Kyle()

class PrimalCustomViewTextLabel {
    
}

typealias customLabel = PrimalCustomViewTextLabel



print(strArr.flatMap { $0 }.filter { $0.length() >= 2 }.map { upperStr(str: $0) })
print(strArr.flatMap { $0 }.filter { $0.length() >= 2 }.map { $0.wholeStr() })
