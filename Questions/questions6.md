
## Topics covered
 * Array
 * Custom data structures
 --------

### Question 1
Given an array, return a String that consists of each single-character doubled, all concatenated

#### Example:
```Swift
method(arr: ["a","b","c","d","apple",nil,"cat","boy",nil]) // returns "aabbccdd"
```

<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
let array = ["a","b","c","d","apple",nil,"cat","boy",nil]

func funString(_ arr: [String?]) -> String {
    return arr.flatMap { $0 }.filter { $0.length() == 1 }.map { "\($0)\($0)" }.reduce("",+)
}

extension String {

    func length() -> Int {
        return self.characters.count
    }
}

print(funString(array))
 ```
</details>

--------

### Question 2
Make a custom structure and have a collection of these structures. Then reduce the collection to a single element


<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
struct Student {
    let name: String
    let age: Int  
}

func studentMerge(student1: Student, student2: Student) -> Student {
    return Student(name: student1.name + student2.name, age: student1.age + student2.age)
}

let studentArray: [Student] = [Student(name: "Kyle", age: 19), Student(name: "Connor", age: 21)]

print(studentArray.reduce(Student(name: "Joe", age: 10), studentMerge))
 ```
</details>

--------

### Question 3
Given an array of strings, reduce each string down to it's substring of the last two characters of the string


#### Example:
 ```Swift
method(arr: ["apple","joy","work","space","l"]) // returns ["le", "oy", "ce", "l"]
 ```    

<details>
 <summary><strong>Solution:</strong></summary><br>

```Swift
let strArr = ["apple","joy","work","space","l"]

func subString(_ str: String) -> String {
    let splitIndex = str.index(str.endIndex, offsetBy: -2)
    let range = splitIndex..<str.endIndex
    let lastTwo = String(str[range])
    return lastTwo
}

print(strArr.filter { $0.characters.count >= 2 }.map { subString($0) })
 ```
</details>

--------
