//
//  ModalViewController.swift
//  tutorial
//
//  Created by Terry on 2021/11/13.
//

import UIKit

class ModalViewController: UIViewController{
    
    //MARK: Properties
    lazy var button:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Oppen", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var modalView:ModalView = {
        let view = ModalView()
        return view
    }()
    
    lazy var blurEffectView:UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        return blurEffectView
    }()
    
    //MARK: init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configuer()
    }
    
    //MARK: Helpers
    func closeModal(){
        UIView.animate(withDuration: 0.3, animations: {
            self.modalView.transform = CGAffineTransform(translationX: 0, y: self.view.frame.height)
            self.blurEffectView.alpha = 0
        }) { _ in
            /// modalView를 최종적으로 삭제시키는 함수 호출
            self.modalView.removeFromSuperview()
        }
    }
    
    func openModal(){
        /// openButton이 눌렸을때 modalView를 생성하면서 이펙트 추가
        view.addSubview(modalView)
        modalView.translatesAutoresizingMaskIntoConstraints = false
        modalView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        modalView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -25).isActive = true
        modalView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        modalView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6).isActive = true
        modalView.transform = CGAffineTransform(translationX: 0, y: self.view.frame.height)
        modalView.delegate = self
        
        /// modalView 가 보여질때 블러처리
        UIView.animate(withDuration: 0.3) {
            self.blurEffectView.alpha = 1
            self.modalView.transform = CGAffineTransform.identity
        }
    }
    
    //MARK: Selector
    @objc func buttonTapped(){
        NSLog("buttonTapped")
        openModal()
    }
    
    func configuer(){
        print("ModalViewController")
        view.backgroundColor = .systemBackground
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(blurEffectView)
        blurEffectView.translatesAutoresizingMaskIntoConstraints = false
        blurEffectView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        blurEffectView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        blurEffectView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        blurEffectView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        blurEffectView.alpha = 0
    }
    
}

extension ModalViewController:ModalViewDelegate {
    func closeButtonTapped() {
        NSLog("closs Tapped")
        closeModal()
    }
    
    
}
