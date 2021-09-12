//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Ivan Akulov on 13/05/2018.
//  Copyright © 2018 Ivan Akulov. All rights reserved.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
