//
//  DataTableController.swift
//  CoreDataExample
//
//  Created by kvana_imac11 on 05/12/18.
//  Copyright © 2018 kvana_imac11. All rights reserved.
//

import UIKit

class DataTableController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var dataTable: UITableView!
    var user = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = DatabaseHelper.sharedInstance.getStudentsData()
        // Do any additional setup after loading the view.
        dataTable.delegate = self
        dataTable.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTable.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath) as! DataCell
        cell.user = user[indexPath.row]
//        cell.name.text = user[indexPath.row].name
//        cell.age.text = user[indexPath.row].age
//        cell.mobilenumber.text = user[indexPath.row].mobilenumber
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            user = DatabaseHelper.sharedInstance.deleteData(index: indexPath.row)
            self.dataTable.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
