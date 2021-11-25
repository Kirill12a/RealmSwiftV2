//
//  House.swift
//  RealmSwiftV2
//
//  Created by Kirill Drozdov on 25.11.2021.
//

import Foundation
import RealmSwift

@objcMembers
class House: Object{
    
    var users = List<UserModel>()
    
}
