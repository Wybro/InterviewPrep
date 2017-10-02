## Topics covered
* Struct / Class / Enum definitions
* Data Structures (instantiation, pros / cons, running time)
* Bonus: Delegates, ARC / Memory Management
--------

### Question 1
Define a Person struct that includes a name (String) property, and age (Int) property
**Additionally:** Define a function that prints out a greeting String based on the Person's name

#### Solution:
```Swift
struct Person {
  let name: String
  let age: Int

  func greeting() {
    print("Hello, \(name)")
  }
}
```
--------

### Question 2
Define a Car class with some properties, one custom constructor, and a default constructor -- `init()`

#### Solution:
```Swift
class Car {
  let model: String
  let year: Int

  init() {
    model = ""
    year = 0
  }

  init(model: String, year: Int) {
    model = model
    year =  year
  }
}
```
--------

### Question 3
Define an enum Compass that includes cases for all directions

#### Solution:
```Swift
enum Compass {
  case north, east, south, west
}
```
--------

### Question 4
When might it be useful to maintain a strong retain cycle?

**Background:**
ARC = Automatic Reference Counting
* Apple's way of handling memory management
* Basic idea: Counts references of an object
* When you create a pointer / reference to something, that thing's reference count increases by one -- when a reference to that thing is removed, the count decreases by one
* If two things, call them object A and B, reference each other -- this creates a (strong) RETAIN CYCLE
* This means both objects will stay alive until the references are removed
* Retain cycles can lead to memory leaks if not handled properly

#### Solution:
It might be useful to maintain a strong retain cycle when an operation should outlive the entity that initiated it.
--------

### Question 5
Create two classes and implement the `delegate` pattern

#### Solution:
Step 1: Create two structs -- maybe A & B
```Swift
struct A {}

struct B {}
```

Step 2: Create a protocol delegate for one of the classes -- maybe `ADelegate` -- and write simple method signature for delegate to implement
```Swift
protocol ADelegate {
  func someDelegateFunc()
}
```

Step 3: Create a delegate property on A with a method that will call the delegate function
```Swift
struct A {
  var delegate: ADelegate?

  func delegatedMethod() {
    print("Here")
    delegate?.someDelegateFunc()
  }
}
```

Step 4: Inherit the protocol on the correct class -- put a print statement here to test
```Swift
  struct B: ADelegate {
    func someDelegateFunc() {
      print("Inside delegate")
    }
  }
```

Step 5: Create instances of these classes and set the delegate of the proper class
```Swift
var a = A()
let b = B()

a.delegate = b
```

Step 6: Call the function on the parent (the class that doesn't inherit the protocol)
```Swift
a.delegatedMethod()
```
--------
