//
//  ViewController.swift
//  Singleton
//
//  Created by Dimka Novikov on 13.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = Safe.shared
        print(safe.money)
        
    }
}

