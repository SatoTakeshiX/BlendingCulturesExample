//
//  HandVC.swift
//  BlendingCulturesExample
//
//  Created by Masashi Sutou on 2016/03/08.
//
//

import UIKit

class HandVC: UITableViewController {
    
    private var dataSource  = DataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
        self.navigationItem.leftBarButtonItem = editButtonItem()
    }

    @IBAction private func addNewCard(sender: UIBarButtonItem) {
            dataSource.addItemTo(tableView)
    }
    
//    private func insertTopRow() {
//        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
//    }
//    
//    // MARK: - Table view data source
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return hand.numberOfCards
//    }
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        guard let cell = tableView
//                         .dequeueReusableCellWithIdentifier("cardCell",
//                                                            forIndexPath: indexPath) as? CardCell else {
//            fatalError("Could not create CardCell")
//        }
//        cell.fillWith(hand[indexPath.row])
//        return cell
//    }
//    
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle,
//                            forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            hand = hand.deleteCardAtIndex(indexPath.row)
//            deleteRowAtIndexPath(indexPath)
//        }
//    }
//    
//    private func deleteRowAtIndexPath(indexPath: NSIndexPath) {
//        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//    }
//    
//    override func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
//        hand = hand.moveCard(sourceIndexPath.row, toIndex: destinationIndexPath.row)
//    }
}
