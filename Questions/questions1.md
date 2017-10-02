## Topics covered
* Array / String processing
* Data Structures
* Running time
* Higher order functions

### Question 1
Find the **MOST** frequent integer(s) in an array

#### Example
``` Swift
yourFunction(arr: [0,2,1,4,0,3]) // returns [0]
```

### Question 2
Find the **LEAST** frequent integer(s) in an array

#### Example
``` Swift
yourFunction(arr: [0,2,1,4,0,3]) // returns [2,1,4,3]
```

### Question 3
Check whether or not a String contains all unique characters

#### Example
``` Swift
yourFunction(str: "hi") // returns true
yourFunction(str: "hello") // returns false
```

### Question 4
Check if a String contains all the letters of another String
Note:
* Don't worry about repeated letters -- look for first instance of a character
* Assume second String is the substring -- Check if second String contained within first String

**Bonus:** Do this efficiently --> O(n) time after some pre-processing (assumes Strings are roughly same size)

#### Example
``` Swift
yourFunction(str1: "berries", str2: "bees") // returns true
yourFunction(str1: "banana", str2: "band") // returns false
```

### Question 5
Given an array of potentially optional values (some nil), return an array with no nils

#### Example
``` Swift
yourFunction(arr: [0,3,nil,2,nil]) // returns [0,3,2]
```
