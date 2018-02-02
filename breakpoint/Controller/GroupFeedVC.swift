//
//  GroupFeedVC.swift
//  breakpoint
//
//  Created by Chase McElroy on 2/1/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLabel: UILabel!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var sendBtn: UIButton!
    
    var group: Group?
    
    func initData(forGroup group: Group) {
        self.group = group
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: self.group!) { (returnedEmails) in
            self.membersLabel.text = returnedEmails.joined(separator: ", ")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
}
