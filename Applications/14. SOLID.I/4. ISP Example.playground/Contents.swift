import UIKit

protocol Flying: AnyObject {
    func fly() -> Void
}

protocol Swimming: AnyObject {
    func swim() -> Void
}

final class Duck: Flying, Swimming {
    
    func fly() {
        print("i can fly a lot")
    }
    
    func swim() {
        print("i can swim a lot")
    }
    
}

let duck1 = Duck()
duck1.fly()
duck1.swim()

final class Penguin: Swimming {
    
    func swim() {
        print("swim is a life")
    }
    
}

let penguin = Penguin()
penguin.swim()
