//
//  SourceType.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/03.
//
//

import UIKit

protocol SourceType: UITableViewDataSource {
    
    var dataObject: DataType { get set }
    
    func insertTopRowIn(tableView: UITableView)
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView)
}

extension SourceType {
    func insertTopRowIn(tableView: UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }

//protocol SourceType: UITableViewDataSource {
//    var dataObject: DataType { get set }
//    var conditionForAdding: Bool { get }
//    func insertTopRowIn(tableView: UITableView)
//    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView)
//}
//
//extension SourceType {
//    func insertTopRowIn(tableView: UITableView) {
//        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
//    }
//    
//    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView) {
//        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//    }
}
