//
//  Safe.swift
//  Singleton
//
//  Created by Dimka Novikov on 13.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

class Safe {
    
    var money = 0
    static let shared = Safe()
    
    private init() {}
}
