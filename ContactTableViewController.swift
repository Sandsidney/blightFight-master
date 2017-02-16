//
//  ContactTableViewController.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/3/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {

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
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ContactTableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = contactNames[indexPath.row]
        cell.contactImageView.image = UIImage(named: contactImages[indexPath.row])
        cell.emailLabel.text = contactEmails[indexPath.row]
        cell.jobTitleLabel.text = contactJobTitles[indexPath.row]
        
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
 
    var contactNames = ["Sara Ogden", "Carol Newman", "Jennifer Hodges", "James Watson", "Sidney Watson", "Sam Hardacre", "Brooke Tucker", "Eric Wilson", "Felicity Blake", "Jennifer Butler", "Colin Mitchell", "William Quinn"]
    
    var contactEmails = ["sara.ogden@badinhs.org", "carol.newman@badinhs.org", "jennifer.hodges@badinhs.org", "james.watson@badinhs.org", "sidney.watson@badinhs.org", "sam.hardacre@badinhs.org", "brooke.tucker@badinhs.org", "eric.wilson@badinhs.org", "felicity.blake@badinhs.org", "jennifer.butler@badinhs.org", "colin.mitchell@badinhs.org", "william.quinn@badinhs.org"]
    
    var contactJobTitles = ["Homeowner Association Manager", "Land Acquisition Manager", "Leasing Property Manager", "Homeowner Association Manager", "Real Estate Manager", "Property Manager", "Homeowner Association Manager", "Leasing Property Manager", "Land Acquisition Manager", "Real Estate Manager", "Property Manager", "Homeowner Association Manager"]
    
    var contactImages = ["BeckyLong.jpg", "BethEnderle.jpg", "CindyMinton.jpg", "DaveGretz.jpg", "KathyJeffcoat.jpg", "KatieGray.jpg", "KatieMaciulewicz.jpg", "Mattshamp.jpg", "SaraThompson.jpg", "MichelleMcDulin.jpg", "SidImhoff.jpg", "ChrisMate.jpg"]
    
    
    
    
    
    
    
    
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
