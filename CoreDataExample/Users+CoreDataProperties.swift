//
//  Users+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by kvana_imac11 on 05/12/18.
//  Copyright © 2018 kvana_imac11. All rights reserved.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: String?
    @NSManaged public var mobilenumber: String?

}
