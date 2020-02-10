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
        
        var alexey: Person?
        var swiftbook: Job?
        
        alexey = Person()
        swiftbook = Job()
        
        alexey?.job = swiftbook
        swiftbook?.person = alexey
        
        alexey = nil
        swiftbook = nil

    }
}

// Parent
class Person {
    var job: Job?
    
    deinit {
        print("Person will be dealocated")
    }
}

// Child
class Job {
    weak var person: Person?
    
    deinit {
        print("Job will be dealocated")
    }
}
