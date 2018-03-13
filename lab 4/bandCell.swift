//
//  bandCell.swift
//  lab 4
//
//  Created by Max Moede on 1/22/18.
//  Copyright © 2018 Max Moede. All rights reserved.
//

import UIKit

class bandCell: UITableViewCell {

    @IBOutlet weak var bandName: UILabel!
    @IBOutlet weak var numMembers: UILabel!
    @IBOutlet weak var yearsActive: UILabel!
    @IBOutlet weak var bandPic: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
