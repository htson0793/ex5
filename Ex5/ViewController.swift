//
//  ViewController.swift
//  Ex5
//
//  Created by Hoang Son on 10/13/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var ctButton: UIButton!
    
    let database :Dictionary<String,String> = ["username" : "son", "password" : "123"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ctButton.layer.cornerRadius = 10
    }
    @IBAction func btnLogin(_ sender: Any) {
        let userName = self.txtUsername.text
        let lcUserName = self.database["username"]
        let passWord = self.txtPassword.text
        let lcPassWord = self.database["password"]
        
        guard (userName, passWord) == (lcUserName, lcPassWord) else {
            return
        }
        self.performSegue(withIdentifier: "showCountry", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

