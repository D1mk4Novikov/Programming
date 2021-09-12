//
//  SecondViewController.swift
//  Memory Management
//
//  Created by Dimka Novikov on 11.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {

    private var person: Person?
    private var dog: Dog?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.person = Person()
        self.dog = Dog()
        
        self.person?.dog = self.dog
        self.dog?.person = self.person
        
        self.person = nil
        self.dog = nil
    }
    
    deinit {
        print("UIViewController class was deallocated")
    }

    @IBAction func closeVC(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}

// Не выгрузилась пара классов

final class Person {
    var dog: Dog?
    
    deinit {
        print("Person class was deallocated")
    }
}

final class Dog {
    var person: Person?
    
    deinit {
        print("Dog class was deallocated")
    }
}
