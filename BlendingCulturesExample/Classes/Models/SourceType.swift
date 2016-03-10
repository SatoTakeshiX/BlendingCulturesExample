//
//  SourceType.swift
//  BlendingCulturesExample
//
//  Created by Masashi Sutou on 2016/03/11.
//
//

import UIKit

protocol SourceType: UITableViewDataSource {
    
    var dataObject: DataType { get set }
    var conditionForAdding: Bool { get }
    
    func insertTopRowIn(tableView: UITableView)
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView)
}

extension SourceType {
    func addItemTo(tableView: UITableView) {
        if conditionForAdding {
            dataObject = dataObject.addNewItemAtIndex(0)
            insertTopRowIn(tableView)
        }
    }
    
    func insertTopRowIn(tableView: UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
}
