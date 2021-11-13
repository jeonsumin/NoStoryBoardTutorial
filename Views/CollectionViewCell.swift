//
//  CollectionViewCell.swift
//  tutorial
//
//  Created by Terry on 2021/11/13.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var item: String? {
        didSet{
            self.label.text = item
        }
    }
    
    lazy var label:UILabel = {
        let lb = UILabel()
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
        backgroundColor = .red
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}

