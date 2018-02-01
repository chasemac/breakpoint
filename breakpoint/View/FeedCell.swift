//
//  FeedCell.swift
//  breakpoint
//
//  Created by Chase McElroy on 1/31/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLabel.text = content
    }
    
    
}
