//
//  TableViewController.swift
//  tutorial
//
//  Created by Terry on 2021/11/13.
//

import UIKit

private let reuserableIdentifier = "cell"

class TableViewController: UITableViewController {
    
    //MARK: Properties
    let items = ["1","2","3","4","5","6","7","8","9","10"]
    
    //MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: Configure
    func configure(){
        tableView.register(TableCell.self,forCellReuseIdentifier: reuserableIdentifier)
        
    }
    
}

//MARK: TableViewController Delegate and DataSource functions
extension TableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuserableIdentifier, for: indexPath) as! TableCell
        
        let item = self.items[indexPath.row]
        cell.item = item
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100 
    }
}
