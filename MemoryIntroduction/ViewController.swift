//
//  ViewController.swift
//  MemoryIntroduction
//
//  Created by Artur Anissimov on 10.02.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mother: Parent?
        mother = Parent()
        
        mother = nil

    }
}

class Parent {
    
    var child = Child() // Зависимый. Зависит от класса Parent. Владелец: Parent
    
    deinit {
        print("Paren will be dealocated!") // Выгружен из памяти
    }
}

class Child {
    deinit {
        print("Child will be dealocated") // Выгружен из памяти
    }
}
