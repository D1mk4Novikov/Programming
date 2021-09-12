//
//  Meal+CoreDataProperties.swift
//  MealTime
//
//  Created by Dimka Novikov on 10/02/2020.
//  Copyright © 2020 //DDEC. All rights reserved.
//
//

import Foundation
import CoreData


extension Meal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Meal> {
        return NSFetchRequest<Meal>(entityName: "Meal")
    }

    @NSManaged public var date: Date?
    @NSManaged public var user: User?

}
