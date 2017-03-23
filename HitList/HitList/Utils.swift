//
//  Utils.swift
//  HitList
//
//  Created by hackeru on 23/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

extension UIView{
    func superview<T>(of type: T.Type) -> T? {
        return superview as? T ?? superview.flatMap { $0.superview(of: T.self) }
    }
    
    var indexPath : IndexPath?{
        get{
            guard
            let cell = self.superview(of: UITableViewCell.self),
                let tableView = self.superview(of: UITableView.self) else{
                    return nil
            }
            
            
            return tableView.indexPath(for: cell)
            
        }
    }
}









