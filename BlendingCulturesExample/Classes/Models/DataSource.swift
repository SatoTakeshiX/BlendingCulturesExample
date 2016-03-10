//
//  DataSource.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/03.
//
//

import UIKit

class DataSource: NSObject, UITableViewDataSource, SourceType {
    
    var dataObject: DataType = Hand()
    
    func addItemTo(tableView: UITableView) {
        if dataObject.numberOfItems < 5 {
            dataObject = dataObject.addNewItemAtIndex(0)
            insertTopRowIn(tableView)
        }
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.numberOfItems
    }

    func tableView(tableView: UITableView,
                   cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            guard let cell = tableView
                             .dequeueReusableCellWithIdentifier("cardCell",
                                                                forIndexPath: indexPath)
                             as? CardCell, hand = dataObject as? Hand else {
                        
                    fatalError("Could not create CardCell or Hand instance")
            }
            
            cell.fillWith(hand[indexPath.row])
            return cell
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            dataObject = dataObject.deleteItemAtIndex(indexPath.row)
            deleteRowAtIndexPath(indexPath, from: tableView)
        }
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        dataObject = dataObject.moveItem(fromIndexPath.row, toIndex: toIndexPath.row)
    }
}
