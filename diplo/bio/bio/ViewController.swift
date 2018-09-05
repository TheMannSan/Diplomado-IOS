//
//  ViewController.swift
//  bio
//
//  Created by Servicio on 8/18/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func respondeToTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

