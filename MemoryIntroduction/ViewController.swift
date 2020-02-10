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
        
        var first: MyClass? = MyClass()
        var second = first
        var third = first
        
        first = nil
        second = nil
        third = nil
    }


}

class MyClass {
    
    var someNumber = 16
    
    // deinit выполняется когда объект выгружается из памяти.
    deinit {
        print("MyClass will be dealocated!")
    }
}
