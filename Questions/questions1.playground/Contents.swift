/* 
 9/11/17
 Interview Questions 2
 
 Topics covered:
 - Array / String processing
 - Data Structures
 - Run-time
 - High-order functions
*/



/*
 Question 1
 - Find the MOST frequent integer(s) in an array
 
 - Example:
    let arr = [0,2,1,4,0,3] --> returns [0]
*/

func mostFreq(arr: [Int]) -> [Int] {
    var numFreq = [Int:Int]()
    for num in arr {
        if numFreq[num] != nil {
            numFreq[num] = numFreq[num]! + 1
        } else {
            numFreq[num] = 1
        }
    }
    var mostFreqNums: [Int] = []
    var highestCount = 0
    for (num,count) in numFreq {
        if count > highestCount {
            highestCount = count
            mostFreqNums = []
            mostFreqNums.append(num)
        } else if count == highestCount {
            mostFreqNums.append(num)
        }
    }
    return mostFreqNums
}


/* -----------------------------------------------------------------------
 Question 2
 - Find the LEAST frequent integer(s) in an array
 
 - Example:
    let arr = [0,2,1,4,0,3] --> returns [2,1,4,3]
*/

    func leastFreq(arr: [Int]) -> [Int] {
        var numFreq = [Int:Int]()
        var lowestCount: Int? = nil
        if arr.count > 0 {
            lowestCount = 1
            for num in arr {
                if numFreq[num] != nil {
                    numFreq[num] = numFreq[num]! + 1
                } else {
                    numFreq[num] = 1
                }
            }
            var leastFreqNums: [Int] = []
            for (num,count) in numFreq {
                if count < lowestCount! {
                    lowestCount = count
                    leastFreqNums = []
                    leastFreqNums.append(num)
                } else if count == lowestCount! {
                    leastFreqNums.append(num)
                }
                return leastFreqNums
            }
        }
        return arr
}

/* -----------------------------------------------------------------------
 Question 3
 - Check whether or not a String contains all unique characters
 
 - Example:
    let str1 = "hi" --> returns true
    let str2 = "hello" --> returns false
*/
func uniqueCheck(str: String) -> Bool {
    let chars = Set<Character>(str)
    return chars.count == str.characters.count
}

let aString = "alphabet"
let bString = "abcde"

print(uniqueCheck(str: aString))
print(uniqueCheck(str: bString))

/* -----------------------------------------------------------------------
 Question 4
 - Check if a String contains all the letters of another String
 - Note: Don't worry about repeated letters -- count doesn't matter
 - Note: Assume second String is the substring --> comparing that to first String
 
 - Example:
    let firstStr = "banana" , let secondStr = "band" --> returns false
    let firstStr = "berries", let secondStr = "bees" --> returns true
 
 *Bonus: Do this efficiently --> O(n) time after some pre-processing (assumes Strings are roughly same size)
*/
extension String {
    func isSubstring(_ str: String) -> Bool {
        let charSet = Set<Character>(self)
        for char in str.characters {
            if !charSet.contains(char) {
                return false
            }
        }
        return true
    }
}

/* -----------------------------------------------------------------------
 Question 5 -- High Order Functions (Hard)
 - Given an array of potentially optional values (some nil), return an array with no nils
 
 - Example:
    let arr = [0,3,nil,2,nil] --> returns [0,3,2]
*/
let arr = [0,3,nil,2,nil]
print(arr.flatMap { $0 })
