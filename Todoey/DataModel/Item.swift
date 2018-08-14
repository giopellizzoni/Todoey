//
//  Item.swift
//  Todoey
//
//  Created by Giovanni Pellizzoni on 14/08/18.
//  Copyright © 2018 ViViTECH. All rights reserved.
//

import Foundation
import RealmSwift

class Item : Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done : Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "name")
}
