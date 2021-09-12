//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Dimka Novikov on 07.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
