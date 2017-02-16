//
//  RecentReportsTableViewController.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/2/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class RecentReportsTableViewController: UITableViewController {

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

    
    var reportNames = ["#234 2475 Bridgewater Lane", "#443 567 Haven Row", "#765 263 Middle Boulevard", "#652 865 Cross Avenue", "#335385 Mill Route", "#4428 445 Nightingale Passage", "#782 6356 Meadow Avenue", "#384 765 Chapel Way", "#094 7656 Seacoast Way", "#827 56 Providence Lane"]
    var bfLogoImages = ["blight1.jpg", "blight2.png", "blight3.png", "blight4.png", "blight5.png", "house1.png", "blight1.jpg", "blight2.png", "blight3.png", "blight4.png", "blight5.png", "house1.png"]
    var discriptionContent = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ac leo eget lacinia. Vestibulum."]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RecentReportsTableViewCell
        
        // Configure the cell...
        cell.numReportLabel.text = reportNames[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: bfLogoImages[indexPath.row])
        cell.discriptionLabel.text = discriptionContent[indexPath.row]
    
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reportNames.count
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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
