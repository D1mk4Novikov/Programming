import Foundation


//MARK: - Lesson 3 - Tuples

// Task 1
//let name = "Dmitry"
//let age: UInt8 = 22
//let tuple: (name: String, age: Int) = (name, Int(age))
//type(of: tuple)

// Task 2
//let tuple: (Int16, Int16, Int16)
//let firstNumber = 15
//let secondNumber = 22.0
//tuple.0 = Int16(firstNumber)
//tuple.1 = Int16(secondNumber)
//tuple.2 = Int16(Double(firstNumber) + secondNumber)

// Task 3
var someTuple = (myName: "Alex", myAge: 12, "Russia")

// Task 4
//var tupleOne = (first: 1, second: 2)
//var tupleTwo = (3, 4)
//tupleTwo = tupleOne
//tupleTwo.first

// Task 5
var a = 12
var b = 21
(a, b) = (b, a)

// Task 6
var firstTuple: (favoriteMovie: String, favoriteNumber: Int) = ("Shrek", 13)
let (movie, number) = firstTuple
movie
number
typealias Man = (favoriteMovie: String, favoriteNumber: Int)
var secondTuple: Man = ("Fast n Furious", 31)
let temporaryTuple = firstTuple
firstTuple = secondTuple
secondTuple = temporaryTuple
firstTuple
secondTuple
let thirdTuple = (firstTuple.favoriteNumber, secondTuple.favoriteNumber, (firstTuple.favoriteNumber - secondTuple.favoriteNumber))



//MARK: - Lesson 5 - Range

// Task 1
//let firstRange = 1 ... 9
//let secondRange = 1 ..< 10

// Task 2
//var range = "a"..."z"
//var rangeTwo = "1"..."y"
//range = rangeTwo

// Task 3
//var range = 1..<10
////var range2 = 1..
//var range3 = ..<5
//var range4 = -100...100
//type(of: range)
//type(of: range2)
//type(of: range3)
//type(of: range4)

// Task 4
// - - -

// Task 5
// - - -

// Task 6
//let range = -100 ... 100
//let item: UInt = 21
//let check = range.contains(Int(item))

// Task 7
let range = "A" ... "Z"
range.lowerBound
range.upperBound

// Task 8
let range1 = Float(1.0) ... Float(5.0)
let range2: ClosedRange<Float> = 1.0 ... 5.0



// MARK: - Lesson 6 - Arrays

// Task 1
// - - -

// Task 2
[1,2,3,4,5,6,7,8,9,10]
Array(1...10)
Array(arrayLiteral: 1,2,3,4,5,6,7,8,9,10)

// Task 3
[1,1,1,1,1]
Array(repeating: 1, count: 5)
Array(arrayLiteral: 1,1,1,1,1)

// Task 4
var array: [Int] = [1, 10, 21, 13]
array[1...2] = [array[1] + array[2]]
array
array.sort()

// Task 5
let array1 = Array(1...100)
var array2: Array<Int> = []
array2 = Array(array1[24...49])

// Task 6
var arr = ["a", "b", "c", "d", "e"]
arr.insert("z", at: 1)
arr
let i = arr.count


// Task 7
// - - -

// Task 8
// - - -

// Task 9
// - - -

// Task 10
// - - -



// MARK: - Lesson 7 - Set

// Task 1
// - - -

// Task 2
// - - -

// Task 3
// - - -

// Task 4
// - - -

// Task 5
// - - -

// Task 6
let taskSet1 = Set(1...10)
let taskSet2 = Set(5...15)
let taskSet3 = taskSet1.union(taskSet2)
let taskSet4 = taskSet1.symmetricDifference(taskSet2)
type(of: taskSet4)
let count: UInt8 = UInt8(taskSet4.count)







// MARK: - Lesson 8 - Dictionary

// Task 1
// - - -

// Task 2
// - - -

// Task 3
// - - -

// Task 4
//let dictionary: Dictionary<Int, String> = [1: "lol", 2: "kek", 3: "cheburek"]
//let set = Set(dictionary.keys)
//let values = Array(dictionary.values)

// Task 5
let dictionary: Dictionary<Int, Array<String>> = [
    1: ["USA", "Washington", "English"],
    2: ["Russian Federation", "Moscow", "Russian"],
    3: ["Estonia", "Tallin", "Estonian"]
]
let dictElCount = dictionary.count
let arrayFromDictonaryCount = Array(repeating: dictElCount, count: dictElCount)




// MARK: - Lesson 9 - String

//let someText = "\u{1f600}"
//print(someText.unicodeScalars.count)
//let someText = "u{1f44d}"
//print(someText)

// Task 1
var text1 = "Swift"
let char1 = "1"
let charArray = Array(repeating: String(char1), count: text1.count)
charArray
text1 = String(char1)

// Task 2
let text2 = "John Wick"
let index = text2.startIndex
text2[index]
text2[text2.index(before: text2.endIndex)]
let text3 = "Баба Яга"
let text4 = text3[text3.startIndex ... text3.index(text3.startIndex, offsetBy: 3)]

// Task 3
let chessWhite: Set<Character> = ["\u{2654}", "\u{2655}", "\u{2656}", "\u{2657}", "\u{2658}", "\u{2659}"]
let chessBlack: Set<Character> = ["\u{265A}", "\u{265B}", "\u{265C}", "\u{265D}", "\u{265E}", "\u{265F}"]
