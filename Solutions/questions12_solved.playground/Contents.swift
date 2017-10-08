/*
 -Given: Square 2D matrix
     * let arr = [[1,8,10], [3,6,1], [8,2,1]]
 -Task: Get sum for particular column
 -Bonus points:
     * Consider case when column is larger than arr
*/

let arr = [[1,8,10], [3,6,1], [8,2,1]]

func sum(_ column: Int, arr: [[Int]]) -> Int {
    guard column <= arr.count else { return 0 }
    var sum = 0
    arr.forEach { sum += $0[column] }
    return sum
}

// Kyle's solution
func sumFor(_ columnNum: Int, arr: [[Int]]) -> Int {
    if columnNum > arr.count {
        return -1
    }
    return arr.map { $0[columnNum] }.reduce(0,+)
}


//print(sum(10, arr: arr))
//print(sum(0, arr: arr))
//print(sum(1, arr: arr))
//print(sum(2, arr: arr))

/* ------------------------------------------------------
 -Given: 2D matrix
     * let arrSmall = [[1,2],[3,4]]
     * let arrLarge = [[1,2,3],[4,5,6],[7,8,9]]
 -Task: Get sum for top-left to bottom-right diagonal
 -Bonus points:
     * Consider case when matrix isn't square -- write func (extension?!) to check
*/

func sumDiagonal(arr: [[Int]]) -> Int {
    guard arr.square() else { return 0 }
    var sum = 0
    arr.enumerated().forEach { index, value in
        sum += value[index]
    }
    return sum
}

let arrSmall = [[1,2],[3,4]]
let arrLarge = [[1,2,3],[4,5,6],[7,8,9]]
//print(sumDiagonal(arr: arrSmall))
//print(sumDiagonal(arr: arrLarge))

extension Array where Element == [Int] {
    func square() -> Bool {
        var isSquare = true
        forEach {
            if $0.count != count {
                isSquare = false
            }
        }
        return isSquare
    }
}

let notSquare = [[1,2],[1],[2,4]]
let square = [[1,2,6], [2,3,7],[3,5,2]]
//print(notSquare.square())
//print(square.square())


// Kyle's solution

func diagSum(arr: [[Int]]) -> Int {
    guard arr.square() else { return -1 }
    var sum = 0
    for (index,row) in arr.enumerated() {
        sum += row[index]
    }
    return sum
}

extension Array where Element == [Int] {
    func square() -> Bool {
        for arr in self {
            if arr.count != self.count {
                return false
            }
        }
        return true
    }
}


