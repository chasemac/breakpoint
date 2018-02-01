//
//  GroupCellTableViewCell.swift
//  breakpoint
//
//  Created by Chase McElroy on 2/1/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupDescLbl.text = description
        self.groupTitleLbl.text = title
        self.memberCountLbl.text = "\(memberCount) count."
    }
}
