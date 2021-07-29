import Foundation
import Darwin


// MARK: - Lesson 19 - Enumerations

// Task 1
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case substraction(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
    indirect case division(ArithmeticExpression, ArithmeticExpression)
    indirect case power(ArithmeticExpression, ArithmeticExpression)
    func evaluate(_ expression: ArithmeticExpression? = nil) -> Int {
        switch (expression ?? self) {
        case let .number(value):
            return value
        case let .addition(valueLeft, valueRight):
            return (self.evaluate(valueLeft) + self.evaluate(valueRight))
        case .substraction(let valueLeft, let valueRight):
            return (self.evaluate(valueLeft) - self.evaluate(valueRight))
        case .multiplication(let valueLeft, let valueRight):
            return (self.evaluate(valueLeft) * self.evaluate(valueRight))
        case .division(let valueLeft, let valueRight):
            return (self.evaluate(valueLeft) / self.evaluate(valueRight))
        case .power(let valueLeft, let valueRight):
            if (self.evaluate(valueRight) == 0) {
                return 1
            } else {
                var result = self.evaluate(valueLeft)
                for _ in (1 ..< self.evaluate(valueRight)) {
                    result *= evaluate(valueLeft)
                }
                return result
            }
        }
    }
}
var hardExpr = ArithmeticExpression.power(.number(3),.number(3))
hardExpr.evaluate() // 27
hardExpr = ArithmeticExpression.multiplication(.number(3), .number(3))
hardExpr.evaluate() // 9


// Task 2
// - - -

// Task 3
enum Chessman {
    enum Color: String {
        case white = "white"
        case black = "black"
    }
    case king(color: Color)
    case queen(color: Color)
    case bishop(color: Color)
    case knight(color: Color)
    case rook(color: Color)
    case pawn(color: Color)
}

//var whiteKing: Chessman = .king(color: .white)
//var blackKing: Chessman = .king(color: .black)
//var whiteBishop: Chessman = .bishop(color: .white)
//
//switch whiteKing {
//case .king(color: .white):
//    print("Белый король")
//case .king(color: .black):
//    print("Черный король")
//case .bishop(color: .white):
//    print("Белый король")
//case .bishop(color: .black):
//    print("Черный король")
//default:
//    break
//}
//
//var color: Chessman.Color = .white

// Task 4
enum Day: String {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    var label: String {
        return self.rawValue.uppercased()
    }
}

let mon = Day.monday
print(mon.label) // Понедельник
print(Day.friday.label) // Пятница



// MARK: - Lesson 20 - Structs

// Task 1
struct Point {
    let coordinate: (x: Float, y: Float)!
    func getDistance(for point: Point) -> Float {
        return sqrtf(powf(point.coordinate.x - self.coordinate.x, 2) + powf(point.coordinate.y - self.coordinate.y, 2))
    }
}
var p1 = Point(coordinate: (10.0, 20.0))
var p2 = Point(coordinate: (15.0, 22.0))
p1.getDistance(for: p2)

// Task 2
enum Color: String {
    case white = "white"
    case black = "black"
}
enum ChessType: String {
    case king = "king"
    case queen = "queen"
    case bishop = "bishop"
    case knight = "knight"
    case rook = "rook"
    case pawn = "pawn"
}
//3
var color: Color = .white
var figure: ChessType = .king
//4
struct Chessman2 {
    var color: Color
    var type: ChessType
    var coordinates: (Character, UInt)?
    var symbol: Character
    init(color: Color, type: ChessType) {
        self.color = color
        self.type = type
        self.coordinates = nil
        // символ-заполнитель
        self.symbol = "?"
    }
    init(color: Color, type: ChessType, coordinates: (Character, UInt), symbol: Character) {
        self.color = color
        self.type = type
        self.coordinates = coordinates
        self.symbol = symbol
    }
    mutating func setCoordinates(char: Character, num: UInt) {
        self.coordinates = (char, num)
    }
    mutating func kill(){
        self.coordinates = nil
    }
}
var whiteKing = Chessman2(color: .white, type: .king)
whiteKing.setCoordinates(char: "C", num: 3)
whiteKing.kill()
var blackKing = Chessman2(color: .black, type: .king, coordinates: ("A",2), symbol: "\u{265A}")

// Task 3
struct User {
    var name: String
    var surname: String
    init (name: String, surname: String = "") {
        self.name = name
        self.surname = surname
    }
//    init(name: String){
//        self.init(name: name, surname: "")
//    }
//    init(name: String, surname: String){
//        self.name = name
//        self.surname = surname
//    }
    func getInfo() -> String{
        return "Имя: \(name). Фамилия: \(surname)"
    }
    mutating func setName(name: String){
        self.name = name
    }
    mutating func setSurname(surname: String){
        self.surname = surname
    }
}
var jack = User(name: "Jack", surname: "London")
jack.name //"Jack"
jack.surname //"London"
jack.setSurname(surname: "Podrick")
jack.surname //"Podrick"



// MARK: - Lesson 21 - Classes

// Task 1
class Link {
    var property: Int
    init(_ property:Int){
        self.property = property
    }
}
struct Copy {
    var property: Int
}
var value = Link(10)
var valueByLink = value
valueByLink.property = 12
value.property
var structValue = Copy(property: 15)
var anotherSctructValue = structValue
anotherSctructValue.property = 12
structValue.property



// MARK: - Lesson 22 - Properties

// Task 1
class RandomNumberGenerator {
    var min: Int
    var max: Int
    init(min: Int, max: Int) {
        self.min = min
        self.max = max
    }
    func getNumber() -> Int {
        return Int.random(in: self.min...self.max)
    }
}

struct Employee {
    var firstName: String
    var secondName: String
    var salary: Int
}

let names = ["Alex", "John", "Mark", "Andrey", "Mike"]
let secondNames = ["Usov", "Hendriks", "Stalone", "Martin"]

let worker: Employee = .init(firstName: names[RandomNumberGenerator(min: 0, max: names.count - 1).getNumber()],
                             secondName: secondNames[RandomNumberGenerator(min: 0, max: secondNames.count - 1).getNumber()],
                             salary: RandomNumberGenerator(min: 20_000, max: 100_000).getNumber())

