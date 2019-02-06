//
//  DataCell.swift
//  CoreDataExample
//
//  Created by kvana_imac11 on 05/12/18.
//  Copyright © 2018 kvana_imac11. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var mobilenumber: UILabel!
    
    var user : Users!{
        didSet {
            name.text = user.name
            age.text = user.age
            mobilenumber.text = user.mobilenumber
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
