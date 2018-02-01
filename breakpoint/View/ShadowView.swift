//
//  ShadowView.swift
//  breakpoint
//
//  Created by Chase McElroy on 1/31/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }
}
