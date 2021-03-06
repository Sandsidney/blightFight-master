//
//  TableViewController.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/15/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class GetInvolvedTableViewController: UITableViewController {

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

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! GetInvolvedTableViewCell
        
        // Configure the cell...
        cell.eventNameLabel.text = events[indexPath.row]
        cell.eventImageView.image = UIImage(named: eventImages[indexPath.row])
        cell.eventDateLabel.text = dates[indexPath.row]
        cell.discriptionLabel.text = eventDescription[indexPath.row]
        
        //change the color of the checkmark
        cell.tintColor = UIColor.green
        if eventIsVisited[indexPath.row] {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    var events = ["Trash Clean up day", "River Walk","Earth Day", "Park Construction", "Park Clean Up", "Landscaping"]
    var eventImages = ["trashPickUp.jpg", "riverPickUp.png", "earthDay.png", "parkBuilding.png", "treePlanting.png", "plantingGrass.png"]
    var dates = ["March 3, 2017", "March 25, 2017", "April 14, 2017", "April 28, 2017", "May 5, 2017", "May 19, 2107"]
    var eventDescription = ["Join us in picking up trash along Pleasent Ave.", "Walk the river and help find trash to keepthe river garbage free.", "Come join us on Earth Day!", "Come help us put together the new park.", "Come help at Joyce Park to clean up the trash and pilled up leaves to make the park safer.", "Help but some mulch down around the city signs to give it a fresh new look."]
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Create an option menu as an action sheet
        let optionMenu = UIAlertController(title: nil, message: "Would you like to help clean up the city?", preferredStyle: .alert)
        
        // Add actions to the menu
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        optionMenu.addAction(cancelAction)
        
        // Display the menu
        present(optionMenu, animated: true, completion: nil)
       
        // Check-in action
        let checkInTitle = eventIsVisited[indexPath.row] ? "Undo join in" : "Join in"
        let checkInAction = UIAlertAction(title: checkInTitle, style: .default, handler: {
            (action:UIAlertAction!) -> Void in
        
            let cell = tableView.cellForRow(at: indexPath)
            
            // Toggle check-in and undo-check-in
            self.eventIsVisited[indexPath.row] = self.eventIsVisited[indexPath.row] ? false : true
            cell?.accessoryType = self.eventIsVisited[indexPath.row] ? .checkmark : .none
            })
        optionMenu.addAction(checkInAction)
        
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
  
    var eventIsVisited = Array(repeating: false, count: 10)
    
    
    
    
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
