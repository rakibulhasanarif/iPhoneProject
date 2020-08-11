//
//  HourlyUpdateTableViewCell.swift
//  iosGroupProject
//
//  Created by Rakibul Hasan on 11/8/20.
//  Copyright © 2020 Rakibul Hasan. All rights reserved.
//

import UIKit

class HourlyUpdateTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static let identifier = "HourlyUpdateTableViewCell"
    static func nib()->UINib
    {
        return UINib(nibName: "HourlyUpdateTableViewCell", bundle: nil)
    }
    
}
