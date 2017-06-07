//
//  ViewController.swift
//  NodeSwiftTemplate
//
//  Created by Fadi Bitar on 6/6/17.
//  Copyright © 2017 Fadi Bitar. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //ACTIONS
    @IBAction func loginButton(_ sender: UIButton) {
        loginLabel.text = "Login"
        let parameters: Parameters = [
            "user": 1
        ]
        Alamofire.request("http://localhost:80/login", method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
                let json = JSON(response.result.value)
                let confirmation = json["login"].stringValue
                print(confirmation)
            }
        }
    }


