//
//  TableViewController.swift
//  ToDolist
//
//  Created by Servicio on 9/4/18.
//  Copyright © 2018 Servicio. All rights reserved.
//
import UIKit

class TableViewController: UITableViewController {
    
    var todos = [ToDo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCellIdentifier")  else {
            fatalError("Could not dequeue a cell")
            let todo = todos[indexPath.row]
        }
            cell.titleLabel?.text = todo.title
            return cell
    }

}

