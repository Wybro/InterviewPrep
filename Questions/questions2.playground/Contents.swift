/*
 9/11/17
 Interview Questions 2
 
 Topics covered:
 - Struct / Class / Enum definitions
 - Data Structures (instantiation, pros / cons, running time)
 - Bonus: Delegates, ARC / Memory Management
 ------------------------------------------------------------------------
*/

/*
 ------------------------------------------------------------------------
 Question: Define a Person struct that includes a name (String) property, and age (Int) property
    - Additionally: define a function that prints out a greeting String based on the Person's name
*/



/*
 ------------------------------------------------------------------------
 Question: Define a Car class with one custom constructor, and a default constructor ( init() )
*/



/*
 ------------------------------------------------------------------------
 Question: Define an enum Compass that includes cases for all directions
*/



/*
 ------------------------------------------------------------------------
 ARC = Automatic Reference Counting
 - Apple's way of handling memory management
 - Basic idea: Counts references of an object
 - When you create a pointer / reference to something, that thing's reference count
 increases by one -- when a reference to that thing is removed, the count decreases by one
 - If two things, call them object A and B, reference each other -- this creates a (strong) RETAIN CYCLE
 * This means both objects will stay alive until the references are removed
 * Retain cycles = memory leaks
 
 Question:
 1. When might it be useful to maintain a strong retain cycle?
 */


/*
 ------------------------------------------------------------------------
 Question: Given two classes, create a simple delegate to demonstrate the delegate pattern.
*/

// Step 1: Create a class -- maybe ClassA
// It will need an init method (stick to default)


// Step 2: Create a second class -- maybe ClassB
// It doesn't need an init method (it won't have properties to init)


// Step 3: Create a protocol delegate for ClassA -- maybe ClassADelegate
// Write the method signature for a simple method that the delegate (and parent) will implement


// Step 4: Set the correct class (either ClassA or ClassB) to inherit the protocol


// Step 5: Add custom print statements to each implementation of the method (to see how it works)


// Step 6: Init instances of each type of class & set the delegate of the class to the proper class (found in Step 4)


// Step 7: Call the function on the parent (not the class that inherits the protocol) -- does it work?


