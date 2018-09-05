//
//  ViewController.swift
//  CambioImagen
//
//  Created by Servicio on 8/18/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    
    @IBAction func slider(_ sender: UISlider) {
        
        switch sender.value {
        case 0.0...0.3:
            image.image = UIImage(named: "1")
        case 0.4...0.5:
            image.image = UIImage(named: "2")
        case 0.7...1:
        image.image = UIImage(named: "3")
        default:
            return
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        image.image = UIImage(named: "1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

