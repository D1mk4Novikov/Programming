import UIKit

class Bird {
    
    func fly() {
        print("i can fly")
    }
    
    func swim() {
        print("i can swim")
    }
}

class Duck: Bird {
    override func fly() {
        print("i can fly a lot")
    }
    
    override func swim() {
        print("i can swim a lot")
    }
}

let duck1 = Duck()
duck1.fly()
duck1.swim()

class Penguin: Bird {
    override func fly() {
        fatalError()
    }
    
    override func swim() {
        print("swim is a life")
    }
}

let someBird = Bird() // Penguin don't work
someBird.fly()
someBird.swim()
