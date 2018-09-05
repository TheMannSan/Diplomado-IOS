//
//  SecondViewController.swift
//  bio
//
//  Created by Servicio on 8/18/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    
    
    @IBAction func textField(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
