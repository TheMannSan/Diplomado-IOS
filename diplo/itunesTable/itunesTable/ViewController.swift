//
//  ViewController.swift
//  itunesTable
//
//  Created by Servicio on 9/1/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
   
    var tracks:[Tracks] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
        
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return tracks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(performSegue(withIdentifier: "celda", sender: indexPath))
        
        cell.textLable.text = tracks[indexPath.row].trackName
        return cell 
    }
    
    func fetchData(){
        
    }
        
        
    }

   



