## Topics covered
* Array / String processing
* Data Structures
* Running time
* Higher order functions
--------

### Question 1
Find the **MOST** frequent integer(s) in an array

#### Solution:
```Swift
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
```
--------

### Question 2
Find the **LEAST** frequent integer(s) in an array

#### Solution:
```Swift
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
```
--------

### Question 3
Check whether or not a String contains all unique characters

#### Solution:
```Swift
func uniqueCheck(str: String) -> Bool {
    let chars = Set<Character>(str)
    return chars.count == str.characters.count
}
```
--------

### Question 4
Check if a String contains all the letters of another String

#### Solution:
```Swift
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
```
--------

### Question 5
Given an array of potentially optional values (some nil), return an array with no nils

#### Solution:
```Swift
let arr = [0,3,nil,2,nil]
print(arr.flatMap { $0 })
```
