//
//  ResolvedReportsTableViewController.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/8/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class ResolvedReportsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return numberData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ResolvedReportsTableViewCell
        
        // Configure the cell...
        // Configure the cell...
        cell.numOfRerport.text = numberData[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: recentReportImageData[indexPath.row])
        cell.dateResolvedLabel.text = dateResolvedData[indexPath.row]
        cell.streetNameLabel.text = streetName[indexPath.row]
        
        
        return cell
    }

    
    var numberData = ["#123", "#124", "#125", "#126", "#127", "#128", "#129", "#130", "#131", "#132"]
    
    
    var dateResolvedData = ["February 23, 2016", "March 8, 2016", "March 15, 2016", "March 28, 2016", "April 5, 2016", "July 14, 2016", "August 1, 2016", "August 3, 2016", "August 5, 2016", "September 14, 2016"]
    
    var streetName = ["45 Bliss Lane Hamilton OH", "674 Broom Street Hamilton OH", "7645 Pinnacle Passage Hamilton OH", "6453 Moon Street Hamilton OH", "36 Providence Street Hamilton OH", "645 Angel Avenue Hamilton OH", "3445 Lowland Boulevard Hamilton OH", "356 Winter Avenue Hamilton OH", "2454 Sycamore Passage Hamilton OH", "78 Market Lane Hamilton OH"]
    
    var recentReportImageData = ["houseRedo1.png", "parkRedo1.png", "houseRedo2.png", "tree1.png", "houseRedo3.png", "parkRedo2.png", "houseRedo4.png", "parkRedo3.png", "tree2.png", "houseRedo5.png"]
    
    

    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
