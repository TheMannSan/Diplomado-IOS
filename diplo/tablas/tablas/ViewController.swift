//
//  ViewController.swift
//  tablas
//
//  Created by Servicio on 8/25/18.
//  Copyright © 2018 Servicio. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
  
    
    var nombres = ["luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel","luis","Pedro","juan","Manuel"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellidentifier = "Celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath)
        cell.textLabel?.text = nombres[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        
        let alertController = UIAlertController(title: "alunmo", message: "holi como estas?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        
        present(alertController,animated: true,completion: nil)
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

