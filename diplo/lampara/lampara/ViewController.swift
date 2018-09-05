//
//  ViewController.swift
//  lampara
//
//  Created by Servicio on 8/17/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lamp: UIImageView!
    @IBAction func ON(_ sender: UIButton) {
       
        
        if view.backgroundColor == UIColor.black{
            view.backgroundColor = UIColor.white
            lamp.isHidden = false
            
            
        }
        else{
            lamp.isHidden = true
            view.backgroundColor = UIColor.black
           
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        lamp.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

