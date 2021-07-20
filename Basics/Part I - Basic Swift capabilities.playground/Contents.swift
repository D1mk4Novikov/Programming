import Foundation


//MARK: - Lesson 1

// Task 1
let myConst = "this is my first const"

// Task 2
var myVariable = 1408

// Task 3
myConst

// Task 4
print(myConst)

// Task 5
var age = 19
print(age)
age = 20
print(age)


//MARK: - Lesson 2

// Task 1
var lengthOfPath = Double(52)
var seconds: Int = 360
var v = (lengthOfPath * 1000.0) / (Double(seconds) / 60)

// Task 2
let a = 111
let b = 222
let c = Int("\(a)\(b)")

// Task 3
let d = UInt8.max
let e = Int.min
print(d)
print(e)

// Task 4
var f: Int = 50
var g = 100
var tmp = 0
tmp = f
f = g
g = tmp
print("Значение переменной c = \(f)")
print("Значение переменной d = \(g)")

// Task 5
let parameterOne: Float = 3.14
var parameterTwo: Double = 19.054
parameterTwo = 9.42

// Task 6
let first = 18
let second: Float = 16.4
let third = 5.7
var sum = Float(first) + second + Float(third)
var multi = Int( Float(first) * second * Float(third) )
var multi2 = first * Int(second) * Int(third)
var res = Double(second.truncatingRemainder(dividingBy: Float(third)))
Double(second)
print(sum)
print(multi)
print(res)

// Task 7
//var a = 2
//var b = 3
//var res = (a + 4 * b)*(a - 3 * b)+a * a // -94
//print(res)

// Task 8
//var c = 1.75
//var d = 3.25
//var res = 2*(c+1)*2+3*(d+1)
//print(res)
//type(of: res)

// Task 9
//let length = 11
//let sSquare = length*length
//let pCircle1 = Double(2) * 3.14 * Double(length) // 69.08
//let pCircle2 = 2*Int( 3.14 * Double( length ) ) // 68
//let result = Double(sSquare) * pCircle1 // 8358.68

// Task 10
//var str = "Swift"
//let char: Character = "A"
//var a = 12
//var b = 9
//let res = "\(str) \(char) \(a + b)" // "Swift A 21"
//let res2 = str + String(char) + String(a + b) // "SwiftA21"

// Task 11
print("*   *   *")
print(" * * * *")
print("  *   *")

// Task 12
var day = "11"
var month = "январь"
var year = "2021"
print("\(year) \(month) \(day)")

// Task 13
//var a = true
//var b = false
//a && b // false
//a || b // true

// Task 14
// - - -

// Task 15
//var name = "Василий"
//var weight: Float = 73.0
//var height = 183
//var heightM = Float(height) / 100 // 1.79
//var index = weight / (heightM * heightM)  // 21.7982
//print("Меня зовут \(name). Мой ИМТ - \(index)")

// Task 16
//let a: Int = 46
//let b: Int = 10
//let answer1: Int = (a * 100) + b
//let answer2: Int = (a * 100) + (b * 100)
//let answer3: Int = (a * 100) + (b / 10)
//let answer4: Int = (b / 100) * 12 + Int((Double(a) / 0.01))

// Task 17
// - - -
