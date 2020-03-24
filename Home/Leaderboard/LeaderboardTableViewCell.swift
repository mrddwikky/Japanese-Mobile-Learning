//
//  LeaderboardTableViewCell.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 18/01/20.
//  Copyright © 2020 Dwikky Mardianto. All rights reserved.
//

import UIKit

class LeaderboardTableViewCell: UITableViewCell {

    // Variable
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var usernameRankLabel: UILabel!
    
    @IBOutlet weak var koinRankTextField: UITextField!
    
    @IBOutlet weak var rankView: UIView!
    
    // Methode
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // View
        rankView.layer.borderWidth = 0.3
        rankView.layer.borderColor = UIColor.lightGray.cgColor
        rankView.layer.cornerRadius = 12
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
