import Foundation


// MARK: - Lesson 10 - Control operators

// Task 1
let name = "Dmitry"
var string1: String! = nil

if (name == "Dmitry") {
    string1 = "Hello, \(name)!"
} else {
    string1 = "Goodbye, \(name)!"
}

string1 = (name == "Dmitry") ? "Hello, " : "Goodbye, "
string1 += "\(name)!"
string1

//switch name {
//case "Dmitry":
//    print("Hello, \(name)!")
//default:
//    print("Goodbye, \(name)!")
//}


// Task 2
var `open` = true
let string2 = `open` ? "Открыто" : "Закрыто"

// Task 3
var var1 = -33245
var var2 = -45
var var3 = -124
let result = [var1, var2, var3].max()

// Task 4
var point1 = (-100,1)
var point2 = (10,2)
var point3 = (6,12)
var line1 = sqrt(
    pow(Double(point2.0 - point1.0), 2) +
    pow(Double(point2.1 - point1.1), 2)
)
var line2 = sqrt(
    pow(Double(point2.0 - point3.0), 2) +
    pow(Double(point2.1 - point3.1), 2)
)
var line3 = sqrt(
    pow(Double(point1.0 - point3.0), 2) +
    pow(Double(point1.1 - point3.1), 2)
)
//if line1+line2>line3 {
//    print("Такой треугольник существует")
//}else{
//    print("Такой треугольник не существует")
//}

// Task 5
//var lang = "ru"
//var days: [String] = []
//switch lang {
//case "ru":
//    days = ["пн", "вт", "ср", "чт", "пт", "сб", "вс"];
//case "en":
//    days = ["mn", "ts", "wd", "th", "fr", "st", "sn"];
//default:
//    break;
//}

// Task 6
let lang = "ru"
let chars = "up"
var days: [String] = []
switch lang {
case "ru":
    days = ["пн", "вт", "ср", "чт", "пт", "сб", "вс"];
default:
    days = ["mn", "ts", "wd", "th", "fr", "st", "sn"];
}
days = (chars == "up") ? days.map({ $0.uppercased() }) : days
days

// Task 7
//typealias Operation = (firstOperation: Float, secondOperation: Float, operationSymbol: Character)
//let operation = Operation(3.1, 33, "+")
//switch operation.operationSymbol {
//case "+":
//    print("Сумма: \(operation.0 + operation.1)")
//case "-":
//    print("Разность: \(operation.0 - operation.1)")
//case "*":
//    print("Произведение: \(operation.0 * operation.1)")
//case "/":
//    print("Частное: \(operation.0 / operation.1)")
//default:
//    print("Некорректно задана операция")
//}




// MARK: - Lesson 11 - Optional data types

// Task 1
// - - -

// Task 2
// - - -

// Task 3
// - - -

// Task 4
//let string3: String? = nil
//let string4: String! = nil
//let string5: Optional<String> = nil
//let string6 = Optional<String>(nil)
//let string7 = Float("3.14")

// Task 5
typealias Text = String
let text1: Text = "4564868"
let text2: Text = "-7456874598"
let text3: Text = "jdgk4547584j4b"
//if let unwrappedText1 = Int(text1) {
//    print(unwrappedText1)
//}
//if let unwrappedText2 = Int(text2) {
//    print(unwrappedText2)
//}
//if let unwrappedText3 = Int(text3) {
//    print(unwrappedText3)
//}

// Task 6
typealias TupleType = (numberOne: Text?, numberTwo: Text?)
var tuples: [TupleType] = [
    ("190", "67"),
    ("100", nil),
    ("-65", "70")
]
//for tuple in tuples {
//    switch tuple {
//    case (let number1, let number2) where (number1 != nil) && (number2 != nil):
//        print(tuple)
//    default:
//        break
//    }
//}

// Task 7
var students: [String: [String: UInt8]] = [
    "Shrek 1": ["11.01.2021": 3, "12.01.2021": 5],
    "Shrek 2": ["13.04.2021": 4, "14.04.2021": 4],
    "Shrek 3": ["15.07.2021": 5, "16.07.2021": 2]
]
var groupAverageGrade: Float = 0.0
for student in students {
    var averageGrade: Float = 0.0
    for item in student.value {
        averageGrade += Float(item.value)
    }
//    print(averageGrade / Float(student.value.count))
    groupAverageGrade += (averageGrade / Float(student.value.count))
}
//print(groupAverageGrade / Float(students.count))


// Task 8
if var lessons = students["Shrek 1"] {
    lessons["2019-02-05"] = 5
    students["Shrek 1"] = lessons
}
students

// Task 9
//typealias Coordinates = (alpha: Character?, num: Int?)
//typealias Chessman = [String: Coordinates]
//var figures: Chessman = [
//    "Король": ("A", 1),
//    "Пешка": ("F", 5),
//    "Ферзь": (nil, nil)
//]
//for figure in figures {
//    if let coordinate1 = figure.value.alpha, let coordinate2 = figure.value.num {
//        print("Координата фигуры \"\(figure.key)\" - \(coordinate1)\(coordinate2)")
//    } else {
//        print("Фигура \"\(figure.key)\" не установлена")
//    }
//}



// MARK: - Lesson 12 - Functions

// Task 1
func boolToString(_ b: Bool) -> String {
    String(b)
//    (b) ? "true" : "false"
}
boolToString(true)

// Task 2
func sum(_ array: [Int]) -> Int {
    var sum: Int = 0
    for item in array {
        sum += item
    }
    return sum
//    array.map({ ($0 > 0) ? $0 : 0 }).reduce(0, +)
}
//print(sum([1, -2, 3, 4, -5]))

// Task 3
//func func1(_ array: [Int]) -> Int {
//    (array.count != 0) ? array.reduce(0, *) : 0
//}
//print(func1([1, 2, 3, 4 , 5]))

// Task 4
//func func2(_ a: Int, _ b: Int) -> Int {
//    a * b
//}
//func func2(_ a: Double, _ b: Double) -> Double {
//    a * b
//}
//func2(4, 5)
//func2(4.1, 5.2)

// Task 5
//func func3(_ a: Int) -> Int {
//    -a
//}
//func3(487685)

// Task 6
//func func4(_ days: Int) -> Int {
//    var rent = (850 * days)
//    switch days {
//    case 3..<7:
//        rent -= 550
//    case 7...:
//        rent -= 1620
//    default:
//        break
//    }
//    return rent
//}
//func4(5)
//func4(9)

// Task 7
//func func5(_ array: [Int], _ condition: Int) -> Bool {
//    array.contains(condition)
//}
//func5([1,2,3], 4)
//func5([2,3,4], 3)

// Task 8
//func func6(_ string: String, _ count: Int) -> String {
////    var newString: String = ""
////    for _ in (0 ..< count) {
////        newString += string
////    }
////    return newString
//    String(repeating: string, count: count)
//}
//func6("Swift", 2)
//func6("Xcode", 0)

// Task 9
//func ball(height h: Float, boyFloor N: Int, motherFloor M: Int, ratio L: Float) -> Int {
//    var currentFloor = Float(N) * L
//    var count = 1
//    while currentFloor >= Float(M) {
//        currentFloor *= L
//        count += 2
//    }
//    return count
//}
//ball(height: 10, boyFloor: 2, motherFloor: 1, ratio: 0.75)

// Task 10
//func func8(_ text: String) -> Bool {
//    (Set(text).count == text.count)
//}
//func8("Swift")
//func8("KEK")

// Task 11
//func checkSameSymbols(in stringOne: String, and stringTwo: String) -> Bool {
//    var mutableStringTwo = stringTwo
//    for symbol in stringOne {
//        if let firstIndex = mutableStringTwo.firstIndex(of: symbol) {
//            mutableStringTwo.remove(at: firstIndex)
//        } else {
//            return false
//        }
//    }
//    return mutableStringTwo.count == 0
//}
//checkSameSymbols(in: "abc", and: "bca")
//checkSameSymbols(in: "abc", and: "bcaa")

// Task 12
func getSimpleNumbers(from range: ClosedRange<Int>) -> [Int] {
    var simpleNumbers = [Int]()
    for number in range {
        for delimeter in range {
            if [0, 1].contains(delimeter) {
                continue
            }
            if number % delimeter == 0 && number == delimeter {
                simpleNumbers.append(number)
            } else if number % delimeter == 0 && number != delimeter {
                break
            }
        }
    }
    return simpleNumbers
}
getSimpleNumbers(from: 0...30)

// Task 13
func power(_ iterationCount: Int, _ number: Int) -> Int {
    var newNumber: Int = 1
    guard (iterationCount > 0) else { return newNumber }
    for _ in (1 ... iterationCount) {
        newNumber *= number
    }
    return newNumber
}
power(2, 2)
power(3, 3)
power(3, 5)
power(4, 5)




// MARK: - Lesson 13 - Closure

// Task 1
//let closure1 = {
//    print("Hello, world!")
//}
//closure1()
//type(of: closure1)

// Task 2
// - - -

// Task 3
let closure2 = { (text: String) in
    print(text)
}
closure2("Shrek")
type(of: closure2)
let closure3: (String) -> Void = { print($0) }
print(closure3)
type(of: closure3)

// Task 4
let closure4: (Int, Int) -> Int = { $0 + $1 }
print(closure4(5, 5))
let closure5 = { (_ a: Int, _ b: Int) -> Int in
    return (a + b)
}
print(closure5(3, 12))

// Task 5
//let someClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}
let someClosure: (Int, Int) -> Int = { $0 * $1 }
print(someClosure(3, 18))

// Task 6
let closure6: (Int, Int) -> Int = { $0 - $1 }
func funcWithClosure(_ a: Int, _ b: Int, closure: (Int, Int) -> Int) -> Int {
    return closure(a, b)
}
funcWithClosure(10, 5, closure: closure6)
funcWithClosure(31, 17) { (_ a: Int, _ b: Int) -> Int in
    a * b
}
funcWithClosure(2, 8, closure: *)

// Task 7
func someAction() -> (() -> Int) {
    var currentValue = 0
    return {
        currentValue = currentValue + 1
        return currentValue
    }
}
let increment = someAction()
print(increment())
print(increment())

// Task 8
var a = 11
var b = 22
let closure: () -> Int = { return a + b}
print(closure())
a = 10
b = 20
print(closure())

// Task 9
let arrayOfInt = [2,55,1,2,77,24,1,2]
print(arrayOfInt.sorted(by: >))
print(arrayOfInt.sorted(by: { $0 > $1 }))
print(arrayOfInt.sorted(by: { (_ a: Int, _ b: Int) -> Bool in
    return (a > b)
}))

// Task 10
// - - -



// MARK: - Lesson 14 - Additional features

// Task 1
func func11(_ array: [Int]) -> Int {
//    array.map({ ($0 > 0) ? $0 : 0 }).reduce(0, +)
    array.filter({ $0 > 0 }).reduce(0, +)
}
func11([1,-2,3,4,-5])

// Task 2
func func12(_ a: [Int]) -> [Int] {
    a.map({ power(2, $0) })
}
func12([1,2,3,4])

// Task 3
func func13(_ array: [Int]) -> Int {
    (array.count > 0) ? array.reduce(1, *) : 0
}
func13([1,2,3,4])

// Task 4
func func14(_ array: [Int]) -> [Int] {
    array.filter({ $0 % 2 == 0 })
}
func14([1,4,5,1,2,4,6,3,12,3])

// Task 5
func editStr( _ str: String ) -> String {
    let dict = [Character("1"):"один", "2":"два", "3":"три", "4":"четыре", "5":"пять", "6":"шесть", "7":"семь", "8":"восемь", "9":"девять", "0":"ноль"]
    let replacedArr = str.map({
        (element: Character)->String in
        if dict[element] != nil {
            return dict[element]!
        }else{
            return String(element)
        }
    })
    var replacedStr = ""
    for ch in replacedArr {
        replacedStr += ch
    }
    return replacedStr
}
editStr("Мне 2 года")
editStr("Это стоит 10 рублей")

// Task 6
// - - -



// MARK: - Lesson 15 - Lazy
