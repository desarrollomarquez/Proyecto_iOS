//
//  MyItem.swift
//  CrudRealm
//
//  Created by Diego Marquez Betancur on 4/21/20.
//  Copyright © 2020 Diego Marquez Betancur. All rights reserved.
//

import UIKit
import RealmSwift

class Item: Object {
    
    dynamic var ID = -1
    dynamic var textString = ""
    
    override static func primaryKey() -> String? {
        return "ID"
    }
    
}
