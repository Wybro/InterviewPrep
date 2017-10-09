## Topics covered
* String manipulation (substrings)
* typealias protocol
--------

### Question 1
- Given: Array of strings of various lengths
- Task: Return array of strings where the last 2 characters are uppercased
* Hint: Need at least 2 characters to perform this
* Hint: Write function to make this change to a single string
* Hint: String indexing requires .index, where you have to specify str.startIndex / .endIndex
- There is a variant of this function that takes an offset

<details>
<summary><strong>Solution:</strong></summary><br>

```Swift
extension String {

func length() -> Int {
return self.characters.count
}

func wholeStr() -> String {
let endStartIndex = index(endIndex, offsetBy: -2)
let firstRange = startIndex..<endStartIndex
let secondRange = endStartIndex..<endIndex

return String(self[firstRange] + self[secondRange].uppercased())
}
}

let strArr: [String?] = ["Do", "Connor", "Kyle", "A", "", nil]
print(strArr.flatMap { $0 }.filter { $0.length() >= 2 }.map { $0.wholeStr() })
```
</details>

--------

### Question 2
Given a struct, `typealias` it to another name

<details>
<summary><strong>Solution:</strong></summary><br>

```Swift
struct Connor {

}

let a = Connor()
typealias Kyle = Connor

let b = Kyle()
```
</details>

--------
