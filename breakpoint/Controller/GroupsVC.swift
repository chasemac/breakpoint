//
//  SecondViewController.swift
//  breakpoint
//
//  Created by Chase McElroy on 1/30/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit

class GroupsVC: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.dataSource = self
        groupsTableView.delegate = self
    }

}

extension GroupsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupsTableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else {
            return UITableViewCell()
        }
        cell.configureCell(title: "Nerd", description: "Nerdiest", memberCount: 3)
        return cell
    }
}
