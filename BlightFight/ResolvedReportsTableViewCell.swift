//
//  ResolvedReportsTableViewCell.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/8/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class ResolvedReportsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    @IBOutlet var numOfRerport: UILabel!
    @IBOutlet var dateResolvedLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    @IBOutlet var streetNameLabel: UILabel!

    
}
