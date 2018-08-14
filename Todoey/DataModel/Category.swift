//
//  Category.swift
//  Todoey
//
//  Created by Giovanni Pellizzoni on 14/08/18.
//  Copyright © 2018 ViViTECH. All rights reserved.
//

import Foundation
import RealmSwift

class Category : Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
