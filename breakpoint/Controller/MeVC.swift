//
//  MeVC.swift
//  breakpoint
//
//  Created by Chase McElroy on 1/31/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit
import Firebase

class MeVC: UIViewController {
    

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        } catch {
            print("failed")
        }
    }
    
}
