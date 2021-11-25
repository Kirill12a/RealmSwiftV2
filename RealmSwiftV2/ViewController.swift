//
//  ViewController.swift
//  RealmSwiftV2
//
//  Created by Kirill Drozdov on 25.11.2021.
import UIKit
import RealmSwift

class ViewController: UIViewController {

    let dbManager = DBManagerImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let model = UserModel()
        model.name = "Ruslan"
        model.age = 18
        
        
        let house = House()
        house.users.append(model)
        house.users.append(model)
        
        dbManager.save(user: house)
    }
    
  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         
        let models = dbManager.obtainHouse()
        print(models)
        if let lastModel = models.last{
            print("Удалил модель \(lastModel)")
        dbManager.removeObjects(object: lastModel)
        }
        
    }

    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
          
          let models = dbManager.obtainHouse()
          print("\(models)")
      }

}

