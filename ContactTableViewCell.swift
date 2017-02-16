//
//  ContactTableViewCell.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/3/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    @IBOutlet var contactImageView: UIImageView!
    
}
