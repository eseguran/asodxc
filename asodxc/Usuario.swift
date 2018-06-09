//
//  Usuario.swift
//  asodxc
//
//  Created by Eddy Segura on 6/8/18.
//  Copyright © 2018 Eddy Segura. All rights reserved.
//

import Foundation
import RealmSwift

class Usuario: Object {
    @objc dynamic var Id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var UN: String = ""
    @objc dynamic var password: String = ""
    @objc dynamic var NID: String = ""
    override static func primaryKey() -> String? {
        return "Id"
    }
}
