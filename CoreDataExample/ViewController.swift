//
//  ViewController.swift
//  CoreDataExample
//
//  Created by kvana_imac11 on 05/12/18.
//  Copyright © 2018 kvana_imac11. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var name: UITextField!
    @IBOutlet var age: UITextField!
    @IBOutlet var number: UITextField!
    @IBOutlet var save: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func saveAction(_ sender: Any) {
        
        let dict = ["name":name.text, "age":age.text, "mobilenumber":number.text]
        DatabaseHelper.sharedInstance.save(object: dict as! [String : String])
    }
    
}

