/*
 - Task:
     - Create custom Car struct with properties: make (string), year (int)
     - Sort cars by year
 - Hints:
     - Equatable & Comparable protocols are needed to define the comparison of custom struct
 - Bonus points for custom print-out of Car struct (CustomStringConvertible)
*/

struct Car: Equatable, Comparable, CustomStringConvertible {
    var description: String {
        return "\(year,make)"
    }
    
    static func ==(lhs: Car, rhs: Car) -> Bool {
        return lhs.year == rhs.year
    }
    
    static func <(lhs: Car, rhs: Car) -> Bool {
        return lhs.year < rhs.year
    }
    
    let make: String
    let year: Int
    
    
    
}

let cars: [Car] = [Car(make:"Acura",year: 2014), Car(make:"Kia", year: 2017), Car(make:"Tesla", year: 2018)]
print("Ascending order: \(cars.sorted { $0 < $1 })")
print("Descending order: \(cars.sorted { $0 > $1 })")


/*
 ---------------------------
 Nil Coalescing
 - Task: Set the value of yourAnswer to something (non-nil) in the event that someOptional is nil (which it is)
 - Given:
     - let someOptional: String?
     - let yourAnswer =  <---- You'll be finishing this line
*/
let someOptional: String? = nil
let yourAnswer = someOptional ?? "hello"
print(yourAnswer)


/*
 given an array of repeating strings (not unique), return the count of each element
 */

let strArr: [String] = ["cat","boy","Kyle","Connor","cat","dog","boy","Connor","Connor","Connor","dog"]

extension Array where Element == String {
    
    func elementCount() -> [String:Int] {
        var countDict = [String:Int]()
        self.forEach { string in
            (countDict[string] != nil) ? (countDict[string] = countDict[string]! + 1) : (countDict[string] = 1)
//            if countDict[string] != nil {
//                countDict[string] = countDict[string]! + 1
//            } else {
//                countDict[string] = 1
//            }
        }
        return countDict
        
    }
}








