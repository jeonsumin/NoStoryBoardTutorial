//
//  CollectionHeaderCell.swift
//  tutorial
//
//  Created by Terry on 2021/11/13.
//

import UIKit

class CollectionHeaderCell: UICollectionReusableView {
    
    lazy var label: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.italicSystemFont(ofSize: 50)
        lb.text = "header"
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
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
