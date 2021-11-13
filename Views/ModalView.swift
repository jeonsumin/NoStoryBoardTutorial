//
//  ModalView.swift
//  tutorial
//
//  Created by Terry on 2021/11/13.
//

import UIKit

protocol ModalViewDelegate {
    func closeButtonTapped()
}

class ModalView: UIView{
    //MARK: Properties
    
    var delegate:ModalViewDelegate?
    
    lazy var closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("close", for: .normal)
        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        return button
    }()
    
    //MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selector
    @objc func closeButtonTapped(){
        delegate?.closeButtonTapped()
    }
    
    //MARK: Configure
    func configure(){
        backgroundColor = .systemBackground
        layer.cornerRadius = 8
        
        addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        closeButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
