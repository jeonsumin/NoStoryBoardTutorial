//
//  TableCell.swift
//  tutorial
//
//  Created by Terry on 2021/11/13.
//

import UIKit

class TableCell:UITableViewCell {
    
    var item: String? {
        didSet {
            self.label.text = item
        
        }
    }
    
    lazy var label:UILabel = {
        let lb = UILabel()
        
        return lb
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        backgroundColor = .systemBackground
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    
}
