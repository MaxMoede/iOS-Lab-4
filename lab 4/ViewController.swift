//
//  ViewController.swift
//  lab 4
//
//  Created by Max Moede on 1/22/18.
//  Copyright © 2018 Max Moede. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bandThing : bandClass?
    
    @IBOutlet weak var bandPic: UIImageView!
    @IBOutlet weak var membersLabel: UILabel!
    @IBOutlet weak var yearsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text! = bandThing!.name
        membersLabel.text! = "number of members: " + String(bandThing!.numMembers)
        yearsLabel.text! = "years active: " + String(bandThing!.yearsActive)
        bandPic.image = UIImage(named: bandThing!.logoFileName)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

