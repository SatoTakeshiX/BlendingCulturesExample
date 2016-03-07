//
//  HandVC.swift
//  BlendingCulturesExample
//
//  Created by Masashi Sutou on 2016/03/08.
//
//

import UIKit

class HandVC: UITableViewController {
    
    private let hand  = Hand()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = editButtonItem()
    }

    @IBAction private func addNewCard(sender: UIBarButtonItem) {
        if hand.numberOfCards < 5 {
            hand.addNewCardAtIndex(0)
            insertTopRow()
//            tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
        }
    }
    
    private func insertTopRow() {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    
    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hand.numberOfCards
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cardCell", forIndexPath: indexPath)
        let card = hand.cardAtPosition(indexPath.row)
        cell.textLabel?.text = card.rank.description
        cell.textLabel?.textColor = card.color
        cell.detailTextLabel?.text = card.suit.description
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            hand.deleteCardAtIndex(indexPath.row)
            deleteRowAtIndexPath(indexPath)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    private func deleteRowAtIndexPath(indexPath: NSIndexPath) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
    
    override func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        hand.moveCard(sourceIndexPath.row, toIndex: destinationIndexPath.row)
    }
}
