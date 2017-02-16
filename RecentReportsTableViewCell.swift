//
//  RecentReportsTableViewCell.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/2/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class RecentReportsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet var numReportLabel: UILabel!
    @IBOutlet var discriptionLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    
    
}
