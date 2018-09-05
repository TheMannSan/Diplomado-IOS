//
//  ViewController.swift
//  ISpy
//
//  Created by Servicio on 8/30/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       scroll.delegate = self
        
        UpdateZoomFor(size: view.bounds.size)
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
    func UpdateZoomFor (size: CGSize)
    {
        let widthScale = image.bounds.width
        let heigthScale = image.bounds.height
        scroll.maximumZoomScale = max(widthScale*10, heigthScale*10)
        
    }

}

