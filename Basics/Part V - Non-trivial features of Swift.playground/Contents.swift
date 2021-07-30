import Foundation


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
//enum Chessman {
//    enum Color: String {
//        case white = "white"
//        case black = "black"
//    }
//    case king(color: Color)
//    case queen(color: Color)
//    case bishop(color: Color)
//    case knight(color: Color)
//    case rook(color: Color)
//    case pawn(color: Color)
//}

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
//enum Color: String {
//    case white = "white"
//    case black = "black"
//}
//enum ChessType: String {
//    case king = "king"
//    case queen = "queen"
//    case bishop = "bishop"
//    case knight = "knight"
//    case rook = "rook"
//    case pawn = "pawn"
//}
////3
//var color: Color = .white
//var figure: ChessType = .king
////4
//struct Chessman2 {
//    var color: Color
//    var type: ChessType
//    var coordinates: (Character, UInt)?
//    var symbol: Character
//    init(color: Color, type: ChessType) {
//        self.color = color
//        self.type = type
//        self.coordinates = nil
//        // символ-заполнитель
//        self.symbol = "?"
//    }
//    init(color: Color, type: ChessType, coordinates: (Character, UInt), symbol: Character) {
//        self.color = color
//        self.type = type
//        self.coordinates = coordinates
//        self.symbol = symbol
//    }
//    mutating func setCoordinates(char: Character, num: UInt) {
//        self.coordinates = (char, num)
//    }
//    mutating func kill(){
//        self.coordinates = nil
//    }
//}
//var whiteKing = Chessman2(color: .white, type: .king)
//whiteKing.setCoordinates(char: "C", num: 3)
//whiteKing.kill()
//var blackKing = Chessman2(color: .black, type: .king, coordinates: ("A",2), symbol: "\u{265A}")
//
//// Task 3
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



// MARK: - Lesson 23 - Subscripts

// Task 1
class Chessman {
    enum ChessmanType {
        case king, castle, bishop, pawn, knight, queen
    }
    enum ChessmanColor {
        case black, white
    }
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure:
         Character){
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    init(type: ChessmanType, color: ChessmanColor, figure:
         Character, coordinates: (String, Int)){
        self.type = type
        self.color = color
        self.figureSymbol = figure
        self.setCoordinates(char: coordinates.0, num:coordinates.1)
    }
    func setCoordinates(char c:String, num n: Int){
        self.coordinates = (c, n)
    }
    func kill(){
        self.coordinates = nil
    }
}
class GameDesk {
    var desk: [Int:[String:Chessman]] = [:]
    init(){
        for i in 1...8 {
            desk[i] = [:]
        }
    }
    subscript(alpha: String, number: Int) -> Chessman? {
        get{
            return self.desk[number]![alpha]
        }
        set{
            if let chessman = newValue {
                self.setChessman(chess: chessman, coordinates: (alpha, number))
            }else{
                //Получение фигуры
                let chess = self.desk[number]![alpha]
                //удаление координат у фигуры
                chess!.kill()
                //Удаление фигуры с поля
                self.desk[number]![alpha] = nil
            }
        }
    }
    func setChessman(chess: Chessman , coordinates: (String, Int)){
        let rowRange = 1...8
        let colRange = "A"..."Z"
        if( rowRange.contains( coordinates.1 ) && colRange.contains( coordinates.0 )) {
            self.desk[coordinates.1]![coordinates.0] = chess
            chess.setCoordinates(char: coordinates.0, num: coordinates.1)
        } else {
            print("Coordinates out of range")
        }
    }
}
var game = GameDesk()
var queenBlack = Chessman(type: .queen, color: .black, figure: "\u{265B}", coordinates: ("A", 6))
game["C",5] = queenBlack
game["C",5] // Chessman
game["C",5] = nil
game["C",5] // nil
queenBlack.coordinates



// MARK: - Lesson 24 - Inheritance

// Other task
let array = [1, 2, 3, 4, 7, 8, 15]
let yourNumber = 6

for (i, _) in array.enumerated() {
    for (j, _) in array.enumerated() {
        if ((array[i] + array[j]) == yourNumber) {
            print("array[\(i)] + array[\(j)] = \(array[i]) + \(array[j]) = \(yourNumber)")
        }
    }
}

// Task 1
// - - -


// MARK: - Lesson 27 - Initializers & Deinitializers

// Task 1
enum DayOfWeek: UInt8 {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    init?(_ dayName: String) {
        switch dayName {
        case "Monday":
            self = .monday
        case "Tuesday":
            self = .tuesday
        case "Wednesday":
            self = .wednesday
        case "Thursday":
            self = .thursday
        case "Friday":
            self = .friday
        case "Saturday":
            self = .saturday
        case "Sunday":
            self = .sunday
        default:
            return nil
        }
    }
}

var day = DayOfWeek("Shrek")
type(of: day)

day = .init("Sunday")
day?.rawValue



// MARK: - Lesson 31 - Extensions

// Task 1
extension Int {
    var asDouble: Double {
        get {
            return Double(self)
        }
    }
    var asFloat: Float {
        get {
            return Float(self)
        }
    }
    var asString: String {
        get {
            return String(self)
        }
    }
}
let number = 5
type(of: number.asDouble)
type(of: number.asFloat)
type(of: number.asString)

// Task 2
extension String {
    func crypt() -> String {
        let string = self.split(separator:" ")
        var result = ""
        for w in string {
            var word = String(w)
            if word.count >= 3 {
                let secondCharIndex = word.index(after: word.startIndex)
                let tmp_secondChar = word[secondCharIndex]
                let lastCharIndex = word.index(before: word.endIndex)
                word.replaceSubrange(
                    secondCharIndex ..< word.index(after: secondCharIndex),
                    with: String(word[lastCharIndex]))
                word.replaceSubrange(
                    lastCharIndex ..< word.index(after: lastCharIndex),
                    with: String(tmp_secondChar))
            }
            let codePoint = word.unicodeScalars[word.startIndex].value
            word.replaceSubrange(
                word.startIndex ..< word.index(after: word.startIndex),
                with: String(codePoint))
            result += "\(word) "
        }
        result.remove(at: result.index(before: result.endIndex))
        return result
    }
}
"Hello, world! We are learn Swift lang".crypt()

// Task 3
extension Double {
    var m: Double {
        return (self * 100)
    }
    var km: Double {
        return (self * 100_000)
    }
    var sm: Double {
        return self
    }
    var mm: Double {
        return (self / 10)
    }
}
Double(102).m
1.2.km
900.sm

// Task 4
extension Double {
    var toMM: Double {
        return (self * 10)
    }
    var toSM: Double {
        return self
    }
    var toM: Double {
        return (self / 100)
    }
    var toKM: Double {
        return (self / 100_000)
    }
}
100.1.toM // 1.001
Double(5).km.toM // 5000
Double(150).m.toKM // 0.15

// Task 5
extension Int {
    mutating func iterator(count: Int, closure: (Int) -> Int) {
        for _ in 1...count {
            self = closure(self)
        }
    }
}
var a = 2
a.iterator(count: 3) {$0 * 5}
a // 250

// Task 6
extension Int {
    subscript(digitNumber: Int) -> Int? {
        guard String(self).count >= digitNumber, digitNumber > 0 else {
            return nil
        }
        var mutableNumber = self
        var res = 0
        for _ in digitNumber...String(self).count {
            res = mutableNumber % 10
            mutableNumber /= 10
        }
        return res
    }
}
54[1] //5
98[-2] // nil
113[3] //3
34[4] //nil


// MARK: - Test Task Start -
//class ValueClass {
//    var value: Int = 0
//}
//
//struct ValueStruct {
//    var value: Int = 0
//}
//
//var operationArray = Array(1...10_000_000)
//
//// Class
//var startTime = Date().timeIntervalSince1970
//var classInstance = ValueClass()
//for _ in operationArray {
//    classInstance.value += 1
//}
//var finishTime = Date().timeIntervalSince1970
//print("Время выполнения операций с классом - \(finishTime-startTime)")
//
//// Struct
//startTime = Date().timeIntervalSince1970
//var structInstance = ValueStruct()
//for _ in operationArray {
//    structInstance.value += 1
//}
//finishTime = Date().timeIntervalSince1970
//print("Время выполнения операций со структурой - \(finishTime-startTime)")

// MARK: - Test Task End -



// MARK: - Lesson 32 - Generics

// Task 1
func swapElements<ElementType>(for tuple: inout (ElementType, ElementType)) -> Void {
    (tuple.0, tuple.1) = (tuple.1, tuple.0)
}
var tuple = (5, 4)
swapElements(for: &tuple)

func firstSumElements<ElementType>(for firstElement: ElementType, with secondElement: ElementType) -> ElementType where ElementType: Numeric {
    (firstElement + secondElement)
}

func secondSumElements<ElementType: Numeric>(for firstElement: ElementType, with secondElement: ElementType) -> ElementType {
    (firstElement + secondElement)
}

// Task 2
struct Stack<ElementType> {
    private var stack: Array<ElementType> = []
    mutating func pushToStack(for element: ElementType) {
        self.stack.insert(element, at: 0)
    }
    mutating func popFromStack() -> ElementType {
        return self.stack.removeFirst()
    }
    func getStackElements() -> Array<ElementType> {
        return self.stack
    }
}

var stack: Stack<Int> = .init()
for i in (1 ... 10) {
    stack.pushToStack(for: i)
}
print(stack)
stack.popFromStack()
stack.pushToStack(for: 33)
print(stack)

// Task 3
extension Stack {
    
    mutating func replaceFirstElement(with element: ElementType) {
        self.stack[0] = element
    }
    
}
stack.replaceFirstElement(with: 21)
print(stack)

// Task 4
func search<ElementType: Comparable, CollectionType: Collection>(for element: ElementType, in collection: CollectionType) -> ElementType? where ElementType == CollectionType.Element {
    for item in collection {
        if (item == element) {
            return item
        }
    }
    return nil
}

let arrayForSearching = [1, 2, 3, 4 , 5]
search(for: 3, in: arrayForSearching)

// Task 5
protocol QueueProtocol {
    associatedtype QueueType
    var items: Array<QueueType> { get }
    mutating func push(for element: QueueType) -> Void
    mutating func pop() -> QueueType
}

struct Queue<ElementType>: QueueProtocol {
    typealias QueueType = ElementType
    internal var items: Array<ElementType> = []
}

extension Queue {
    mutating func push(for element: ElementType) {
        self.items.insert(element, at: 0)
    }
    mutating func pop() -> ElementType {
        return self.items.removeLast()
    }
}

var queue: Queue<Int> = .init()
for i in (1 ... 10) {
    queue.push(for: i)
}
queue.items
queue.pop()
queue.push(for: 33)
queue.items


// MARK: - Lesson 33 - Opaque types n' "Some" keyword

// Task 1
protocol Vehicle {
    associatedtype IDType
    var uniqueID: IDType { get set }
}

func getCar<StructType: Vehicle>() -> StructType {
    return Car(uniqueID: 12) as! StructType
}

func getVehicle() -> some Vehicle {
    return Truck(uniqueID: "Shrek")
}

struct Car: Vehicle {
    var uniqueID: UInt64
}

struct Truck: Vehicle {
    var uniqueID: String
}

let car: Car = getCar()
let truck = getVehicle()


// MARK: - Lesson 34 - Error handlers

// Task 1
enum VendingMachineErrors: Error {
    case invalidSelection// = "Invalid selection"
    case insufficientFunds(coinsNeeded: UInt16)// = "Insufficient funds"
    case outOfStock// = "Out of stock"
}

struct Item {
    var price: UInt16
    var count: UInt16
}

class VendingMachine {
    
    var inventory: Dictionary<String, Item> = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    
    var coinsDeposited: UInt16 = 0
    
    private func dispenceSnack(for snackName: String) -> Void {
        print("Dispensing \(snackName)")
    }
    
    func vend(for itemName: String) throws -> Void {
        guard var item = inventory[itemName] else {
            throw VendingMachineErrors.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineErrors.outOfStock
        }
        guard item.price < coinsDeposited else {
            throw VendingMachineErrors.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        item.count -= 1
        inventory[itemName] = item
        dispenceSnack(for: itemName)
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(for: snackName)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8

do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineErrors.invalidSelection {
    print(VendingMachineErrors.invalidSelection)
} catch VendingMachineErrors.outOfStock {
    print(VendingMachineErrors.outOfStock)
} catch VendingMachineErrors.insufficientFunds(coinsNeeded: let coinsNeeded){
    print(VendingMachineErrors.insufficientFunds(coinsNeeded: coinsNeeded))
}


func evaluate() throws -> Int {
    return 5
}

let x = try? evaluate()

//let photo = try! loadImage("./Resources/John Appleseed.jpg")

struct NetworkErrors: Error {
    var code: Int = 0
}

do {
    throw NetworkErrors()
} catch is NetworkErrors {
    print("Network errors was detected")
} catch {
    print("Some undefined errors was detected")
}


extension NetworkErrors {
    func description() -> String {
        return "It's network error with code \(self.code)"
    }
}

do {
    throw NetworkErrors(code: 404)
} catch let error as NetworkErrors {
    print(error.description())
} catch {
    print("Some undefined errors was detected")
}


// MARK: - Lesson 35 - Overloading operators
struct Point2D {
    var x: UInt16
    var y: UInt16
}

struct Vector2D {
    var start: Point2D
    var end: Point2D
    func difference() -> Point2D {
        return Point2D(x: (self.start.x - self.end.x), y: (self.start.y - self.end.y))
    }
}

func +(_ left: Point2D, _ right: Point2D) -> Point2D {
    return Point2D(x: (left.x + right.x), y: (left.y + right.y))
}

func +(_ left: Vector2D, _ right: Vector2D) -> Vector2D {
    return Vector2D(start: (left.start + right.start),
                    end: (left.end + right.end))
}

func -(_ left: Point2D, _ right: Point2D) -> Point2D {
    return Point2D(x: (left.x - right.x), y: (left.y - right.y))
}

func -(_ left: Vector2D, _ right: Vector2D) -> Vector2D {
    return Vector2D(start: (left.start - right.start),
                    end: (left.end - right.end))
}

var vectors = (first: Vector2D(start: Point2D(x: 10, y: 20), end: Point2D(x: 31, y: 22)),
               second: Vector2D(start: Point2D(x: 43, y: 32), end: Point2D(x: 74, y: 39))
)

print(vectors.first + vectors.second)

func +=(_ left: inout Vector2D, _ right: Vector2D) {
    left = left + right
}

func -=(_ left: inout Vector2D, _ right: Vector2D) {
    left = left - right
}

vectors.first += vectors.second
print("1: \(vectors.first)\n2: \(vectors.second)")

func ==(_ left: Point2D, _ right: Point2D) -> Bool {
    return ((left.x == right.x) && (left.y == right.y))
}

func ==(_ left: Vector2D, _ right: Vector2D) -> Bool {
    return ((left.start == right.start) && (left.end == right.end))
}

func !=(_ left: Vector2D, _ right: Vector2D) -> Bool {
    return !(left == right)
}

let vector1 = Vector2D(start: Point2D(x: 3, y: 2),
                       end: Point2D(x: 4, y: 5))
let vector2 = Vector2D(start: Point2D(x: 3, y: 2),
                       end: Point2D(x: 4, y: 5))

vector1 == vector2
vector1 != vector2

// Increment
postfix operator ++
postfix func ++(_ left: inout Vector2D) {
    left += Vector2D(start: Point2D(x: 1, y: 1), end: Point2D(x: 1, y: 1))
}

vectors.first++
print(vectors.first)

// Decrement
postfix operator --
postfix func --(_ left: inout Vector2D) {
    left -= Vector2D(start: Point2D(x: 1, y: 1), end: Point2D(x: 1, y: 1))
}

vectors.first--
print(vectors.first)

infix operator ±
func ±(_ left: inout Point2D, _ right: inout Point2D) {
    left = Point2D(x: 0, y: 0)
    right = Point2D(x: 0, y: 0)
    print("Я съел вектор 🤡")
}

var point1 = Point2D(x: 13, y: 14)
var point2 = Point2D(x: 1742, y: 32)

point1 ± point2
print(point1)
print(point2)
