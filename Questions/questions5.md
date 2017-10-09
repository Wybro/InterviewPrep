
## Topics covered
 * Data structure creation
 * Using zip
 --------

### Question 1
Create as many different forms of the following as possible:
* Array of Ints
* Dictionary of Ints and Booleans
* Set of Strings

<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
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
 ```
</details>

--------

### Question 2
Use zip to:
* create a dictionary where the key is a `String` and the value is an `Int`
* the key represents a word in the first array and the value represents a count in the second array

#### Example:
 ```Swift
let strArr = ["Kyle", "is", "like", "cool", "I", "word"]
let intArr = [3,6,5,10,4,2]
zipper(arr1: strArr, arr2: intArr) -> ["Kyle": 3, "is": 6, "like": 5, "cool": 10, "I": 4, "word": 2]
 ```    

<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
func zipper(arr1: [String], arr2: [Int]) -> [String:Int] {
    var swiftDict = [String:Int]()
    for (str, int) in zip(arr1, arr2) {
        swiftDict[str] = int
    }
    return swiftDict
}

print(zipper(arr1: strArr, arr2: intArr))
 ```
</details>

--------
