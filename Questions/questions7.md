
## Topics covered
 * Arrays
 * Type extensions
 * Using zip
 --------

### Question 1
Zip Problem: Use ```Swift zip``` to enumerate another list

#### Example:
```Swift
method(arr: ["a","b","c","d"]) // outputs "a : 1", "b : 2", ...
```

<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
let numArr: [Int] = [1,2,3,4,5,6]
let letterArr: [String] = ["A","B","C","D","E","F"]

for (num, letter) in zip(numArr, letterArr) {
    print("\(num,letter)")
}
 ```
</details>

--------

### Question 2
Round a decimal to a specified level of precision
round(double * (places of precision ex: 10 = 2, 100 = 3))



<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
let double: Double = 4.59
let rounded = round(double * 10) / 10
 ```
</details>

--------

### Question 3
Create an extension to reverse a number


#### Example:
 ```Swift
-123.reverse() // returns -321
 ```    

<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
let nums = -123

let numStr = "\(nums)"
let splitIndex = numStr.index(numStr.startIndex, offsetBy: 1)
let range1 = numStr.startIndex..<splitIndex
let range2 = splitIndex..<numStr.endIndex
print(numStr[range1] + numStr[range2].reversed() + (nums % 2 == 0 ? "even" : " not even"))



extension Int {
    func reverse() -> Int {
        let numStr = "\(self)"
        let splitIndex = numStr.index(numStr.startIndex, offsetBy: 1)
        let range = splitIndex..<numStr.endIndex
        let reversedNumStr = "-\(String(numStr[range].reversed()))"
        return Int(reversedNumStr)!
    }
}
let nums2 = -524 // return -425
print(nums2.reverse())
 ```
</details>

--------

### Question 4
Take an array of strings, double them and filter out the ones that are longer than 6 characters


<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
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
```
</details>

--------

### Question 5
Given an array, return it with only unique elements


<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
let array1: [String] = ["An", "Apple", "Is", "A", "Fruit", "Apple"]

func uniqueEle(_ arr: [String]) -> [String] {
    var elements = Set<String>()
    for element in arr {
        elements.insert(element)
    }
    return Array(elements)
}

print(uniqueEle(array1))
```
</details>

--------
