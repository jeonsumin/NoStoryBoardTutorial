//
//  ScrollViewController.swift
//  tutorial
//
//  Created by Terry on 2021/11/12.
//

import UIKit

class ScrollViewController : UIViewController {
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = .systemBackground
        sv.contentSize = CGSize(width: view.frame.width, height: 2000)
        
        return sv
    }()
    
    lazy var labelOwn:UILabel = {
        let lb = UILabel()
        lb.text = "Top"
        return lb
    }()
    
    lazy var labelTwo:UILabel = {
        let lb = UILabel()
        lb.text = "Bottom"
        return lb
    }()
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(labelOwn)
        labelOwn.translatesAutoresizingMaskIntoConstraints = false
        labelOwn.topAnchor.constraint(equalTo: scrollView.topAnchor,constant: 100).isActive = true
        labelOwn.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        scrollView.addSubview(labelTwo)
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        labelTwo.topAnchor.constraint(equalTo: labelOwn.bottomAnchor,constant: 1500).isActive = true
        labelTwo.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }
}
