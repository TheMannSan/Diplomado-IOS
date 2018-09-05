//
//  ViewController.swift
//  login
//
//  Created by Servicio on 8/24/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var forgotPass: UIButton!
    @IBOutlet weak var forgotUserName: UIButton!
    
    

    @IBAction func forgotPassButton(_ sender: UIButton) {
        performSegue(withIdentifier:
            "logView", sender: forgotPassButton)
    }
    
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUserNameButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPass {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
       
    }

}

