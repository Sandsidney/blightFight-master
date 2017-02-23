//
//  GetInvolvedTableViewCell.swift
//  BlightFight
//
//  Created by BHSRam9 on 2/15/17.
//  Copyright © 2017 BHSRam9. All rights reserved.
//

import UIKit

class GetInvolvedTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBOutlet var eventNameLabel: UILabel!
    @IBOutlet var eventDateLabel: UILabel!
    @IBOutlet var eventImageView: UIImageView!
    @IBOutlet var discriptionLabel: UILabel!
    
    
}
