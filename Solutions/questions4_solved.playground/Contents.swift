/* Topics covered
* Struct / Class / Enum definitions
* Data Structures (instantiation, pros / cons, running time)
* Bonus: Delegates, ARC / Memory Management
--------
 */
/*
Question 1:
reverse a number

 -Example:
     123 -> 321
 
 */

func reverse(num: Int) -> Int {
    let numStr = "\(num)"
    return Int(String(numStr.reversed()))!
}

print(reverse(num: 123))

func arrayFun(arr: [String]) -> String {
    
    let newArr = arr.joined()
    return newArr
}

print(arrayFun(arr: ["C","a","t"]))

/*
 Question 2:
 Given an array of strings:
 * we want only the strings that are greater than 3 characters long
 Of those, return a dictionary where the key represents the character and the value
 represents the count of the character across the array
 Bonus: Make and use a String extension called length()
 -Example:
     let arr = ["a", "aa", "aaa", "aaaa"] -> ["a": 4]
 */
func charCount(arr: [String]) -> [Character:Int] {
    
    var charCount: [Character:Int] = [:]
    let str = arr.filter { $0.length() > 3 }.joined()
    
    for char in str.characters {
        if charCount[char] != nil {
            charCount[char] = charCount[char]! + 1
        } else {
            charCount[char] = 1
        }
    }
    return charCount
}

extension String {
    func length() -> Int {
        return self.characters.count
    }
}


 let arr = ["a", "aa", "aaa", "aaaa"]
print(charCount(arr: arr))

/*
 Question 3
 convert an array of ints into an array of strings
 */

func convert(arr: [Int]) -> [String] {
    return arr.map { "\($0)" }
}

print(convert(arr: [1,2,3,4]))


