//
//  HandDataSource.swift
//  BlendingCulturesExample
//
//  Created by Masashi Sutou on 2016/03/11.
//
//

import UIKit

class HandDataSource: DataSource {
    
    init() {
        super.init(dataObject: Hand())
    }
    
    override func tableView(tableView: UITableView,
                            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
                                
        guard let cell = tableView
                         .dequeueReusableCellWithIdentifier("cardCell",
                                                            forIndexPath: indexPath)
            as? CardCell, hand = dataObject as? Hand else {
                
                return UITableViewCell()
        }
        cell.fillWith(hand[indexPath.row])
        return cell
    }
    
    override var conditionForAdding: Bool {
        return dataObject.numberOfItems < 5
    }
}
