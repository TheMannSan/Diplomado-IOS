//
//  ViewController.swift
//  Proyecto
//
//  Created by Servicio on 8/25/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1era vista - did load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("alv")
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("1era vista - will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("1era vista - will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("1era vista - did appear")
    }
    


}

