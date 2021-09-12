//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Ivan Akulov on 12/05/2018.
//  Copyright © 2018 Ivan Akulov. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
