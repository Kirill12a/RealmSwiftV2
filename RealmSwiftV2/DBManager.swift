//
//  DBManager.swift
//  RealmSwiftV2
//
//  Created by Kirill Drozdov on 25.11.2021.
//

import Foundation
import RealmSwift


protocol DBManager{
    func save(user: House)
    func obtainHouse()->[House]
    func removeObjects(object: Object)
    func updareObject(object: Object)
}


class DBManagerImpl: DBManager{
    
    fileprivate lazy var mainRealm = try! Realm(configuration: .defaultConfiguration, queue: .main)
    func save(user: House) {
        try! mainRealm.write({
            mainRealm.add(user)
        })
    }
    
    func obtainHouse() -> [House] {
        let models = mainRealm.objects(House.self)
        return Array(models)
    }
    
    func removeObjects(object: Object) {
        try! mainRealm.write({
            mainRealm.delete(object)
        })
    }
    func updareObject(object: Object) {
         
    }
    
}

