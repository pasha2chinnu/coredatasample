//
//  DatabaseHelper.swift
//  CoreDataExample
//
//  Created by kvana_imac11 on 05/12/18.
//  Copyright © 2018 kvana_imac11. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {
    
    static var sharedInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object:[String:String]){
        let user = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context!) as? Users
        user?.name = object["name"]
        user?.age = object["age"]
        user?.mobilenumber = object["mobilenumber"]
        do{
            try context?.save()
        }catch{
            print("data is not saved")
        }
    }
    
    func getStudentsData() -> [Users]{
        var user = [Users]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Users")
        do{
            user = try context?.fetch(fetchRequest) as! [Users]
        }catch{
            print("error")
        }
        return user
    }
    
    func deleteData(index:Int) -> [Users]{
        var user = getStudentsData()
        context?.delete(user[index])
        user.remove(at: index)
        do{
            try context?.save()
        }catch{
            print("can't delete")
        }
        return user
    }
}
