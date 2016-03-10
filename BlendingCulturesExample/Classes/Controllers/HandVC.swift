//
//  HandVC.swift
//  BlendingCulturesExample
//
//  Created by Masashi Sutou on 2016/03/11.
//
//

import UIKit

class HandVC: UITableViewController {
    
    private var dataSource = HandDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
        self.navigationItem.leftBarButtonItem = editButtonItem()
    }

    @IBAction private func addNewCard(sender: UIBarButtonItem) {
            dataSource.addItemTo(tableView)
    }
}
