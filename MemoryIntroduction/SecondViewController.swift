//
//  SecondViewController.swift
//  MemoryIntroduction
//
//  Created by Artur Anissimov on 10.02.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // lazy - ленивое свойство.
    // Это свойство не будет иницализировано до тех пор пока мы к нему не обратимся.
    private lazy var closure: (() -> ())? = { [weak self] in
        guard let self = self else { return }
        self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // closure!()
        
        doSomething {
            self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }

    }
    
    private func doSomething(complitionHandler: () -> ()) {
        complitionHandler()
    }
    
    @IBAction func closeVCPressed() {
        dismiss(animated: true)
    }
    
    deinit {
        print("deinit ", SecondViewController.self)
    }
}
