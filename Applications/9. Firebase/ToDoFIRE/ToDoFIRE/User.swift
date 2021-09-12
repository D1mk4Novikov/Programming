//
//  User.swift
//  ToDoFIRE
//
//  Created by Dimka Novikov on 11.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import Foundation
import Firebase

struct AppUser {
    
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email!
    }
}
