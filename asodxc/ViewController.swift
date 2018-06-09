//
//  ViewController.swift
//  asodxc
//
//  Created by Eddy Segura on 6/7/18.
//  Copyright © 2018 Eddy Segura. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

 
    
  
    
    
    @IBOutlet weak var pass: UITextField!
    
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var NID: UITextField!
    
    @IBOutlet weak var regBtn: UIButton!
    
    @IBAction func regBtn_Click(_ sender: Any) {
        
    
            if self.user.text != "" {
                let usuario: Usuario = Usuario()
                usuario.UN = self.user.text!
                usuario.password = self.pass.text!
                usuario.name = self.name.text!
                usuario.NID = self.NID.text!
                try! realm.write {
                    realm.add(usuario)
                }
            
        }
        
        
    }
    
 
    
    var realm: Realm!
    
    var objectsArray: Results<Usuario> {
        get {
            return realm.objects(Usuario.self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        title = "Welcome"
        
        
    }

}

