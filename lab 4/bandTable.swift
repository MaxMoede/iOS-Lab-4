//
//  restaurantTable.swift
//  lab 4
//
//  Created by Max Moede on 1/22/18.
//  Copyright © 2018 Max Moede. All rights reserved.
//

import UIKit

class bandTable: UITableViewController {

    var theBands = [bandClass]()
    override func viewDidLoad() {
        super.viewDidLoad()
        theBands.append(bandClass(name: "Judas Priest", numMembers: 3, logoFileName: "judasPriest.jpg", yearsActive: 25))
        theBands.append(bandClass(name: "Blizzard of Ozz", numMembers: 3, logoFileName: "ozzy.jpg", yearsActive: 20))
        theBands.append(bandClass(name: "KISS", numMembers: 4, logoFileName: "kiss.jpg", yearsActive: 30))
        theBands.append(bandClass(name: "Motley Crue", numMembers: 4, logoFileName: "motley.jpg", yearsActive: 35))
        theBands.append(bandClass(name: "Jimi Hendrix", numMembers: 1, logoFileName: "jimi.jpg", yearsActive: 60))
        theBands.append(bandClass(name: "Ohio Players", numMembers: 5, logoFileName: "ohio.jpg", yearsActive: 50))
        theBands.append(bandClass(name: "Eric Clapton", numMembers: 1, logoFileName: "eric.jpg", yearsActive: 45))
        theBands.append(bandClass(name: "Metallica", numMembers: 3, logoFileName: "metallica.jpg", yearsActive: 46))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return theBands.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myBand", for: indexPath) as? bandCell
        // Configure the cell...
        let thisBand = theBands[indexPath.row]
        cell?.bandPic?.image = UIImage(named: thisBand.logoFileName)
        cell?.numMembers?.text = String(thisBand.numMembers)
        cell?.bandName?.text = thisBand.name
        cell?.yearsActive?.text = String(thisBand.yearsActive)
        
        return cell!
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showBand" {
            let destVC = segue.destination as? ViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow
            destVC?.bandThing = theBands[(selectedIndexPath?.row)!]
        }
    }
    
    @IBAction func unwindFromDetail(segue:UIStoryboardSegue) {
        
    }
    

}
