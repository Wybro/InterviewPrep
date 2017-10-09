## Topics covered
* Array / String processing
* Data Structures
* Running time
* Higher order functions
--------

### Question 1
Find the **MOST** frequent integer(s) in an array

#### Example:
```Swift
method(arr: [0,2,1,4,0,3]) // returns [0]
```

<details>
<summary><strong>Solution:</strong></summary><br>

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
</details>

--------

### Question 2
Find the **LEAST** frequent integer(s) in an array

#### Example:
```Swift
method(arr: [0,2,1,4,0,3]) // returns [2,1,4,3]
```

<details>
<summary><strong>Solution:</strong></summary><br>

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
</details>

--------

### Question 3
Check whether or not a String contains all unique characters

#### Example:
```Swift
method(str: "hi") // returns true
method(str: "hello") // returns false
```

<details>
<summary><strong>Solution:</strong></summary><br>

```Swift
func uniqueCheck(str: String) -> Bool {
let chars = Set<Character>(str)
return chars.count == str.characters.count
}
```
</details>

--------

### Question 4
Check if a String contains all the letters of another String
Note:
* Don't worry about repeated letters -- look for first instance of a character
* Assume second String is the substring -- Check if second String contained within first String

**Bonus:** Do this efficiently --> O(n) time after some pre-processing (assumes Strings are roughly same size)

#### Example:
```Swift
method(str1: "berries", str2: "bees") // returns true
method(str1: "banana", str2: "band") // returns false
```

<details>
<summary><strong>Solution:</strong></summary><br>

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
</details>

--------

### Question 5
Given an array of potentially optional values (some nil), return an array with no nils

#### Example:
```Swift
method(arr: [0,3,nil,2,nil]) // returns [0,3,2]
```

<details>
<summary><strong>Solution:</strong></summary><br>

```Swift
let arr = [0,3,nil,2,nil]
print(arr.flatMap { $0 })
```
</details>
