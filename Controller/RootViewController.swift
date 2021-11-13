//
//  RootViewController.swift
//  tutorial
//
//  Created by Terry on 2021/10/31.
//

import UIKit

class RootViewController: UIViewController {
    
    //MARK: Properties
    lazy var hellowWorldLabel: UILabel = {
        let label = UILabel()
        label.text = "hellow World"
        return label
    }()
    
    lazy var hellowWorldButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("HelloWorld", for: UIControl.State.normal)
        return button
    }()
    
    lazy var helloWorldView:UIView = {
        let view = UIView()
//        view.backgroundColor = .tertiarySystemGroupedBackground
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var helloWorldTextField:UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    //MARK: Life Cycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ConfigureViewComponents()
        self.hiddenKeyboardWhenTappedAround()
        //extension 전 코드 ( @/extension/Extension.swift 로 이동)
//        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
    }
//  extension 전 코드 ( @/extension/Extension.swift 로 이동)
//    @objc func dismissKeyBoard(){
//        view.endEditing(true)
//    }
    
    //MARK: Configure
    func ConfigureViewComponents(){
        
        view.backgroundColor = .systemBackground // 라이트/다크 모드 호환 background색상 (.stystem*)
        
        view.addSubview(hellowWorldLabel)
        
        hellowWorldLabel.translatesAutoresizingMaskIntoConstraints = false
//        hellowWorldLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        hellowWorldLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        // 화면 가운데 위치하도록 하는 AutoLayout code
        hellowWorldLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        hellowWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(hellowWorldButton)
        hellowWorldButton.translatesAutoresizingMaskIntoConstraints = false //Constraint를 코드로 조정해야 할 일이 있을 때 호출
        hellowWorldButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        hellowWorldButton.topAnchor.constraint(equalTo: hellowWorldLabel.bottomAnchor,constant: 10).isActive = true
        
        
        view.addSubview(helloWorldView)
        helloWorldView.translatesAutoresizingMaskIntoConstraints = false
        helloWorldView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helloWorldView.topAnchor.constraint(equalTo: hellowWorldButton.bottomAnchor,constant: 10).isActive = true
        //UIView 의 경우 width/height 값을 설정해줘야 한다.
        helloWorldView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        helloWorldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(helloWorldTextField)
        helloWorldTextField.translatesAutoresizingMaskIntoConstraints = false
        helloWorldTextField.topAnchor.constraint(equalTo: helloWorldView.topAnchor).isActive = true
        helloWorldTextField.bottomAnchor.constraint(equalTo: helloWorldView.bottomAnchor).isActive = true
        helloWorldTextField.leftAnchor.constraint(equalTo: helloWorldView.leftAnchor,constant: 4).isActive = true
        helloWorldTextField.rightAnchor.constraint(equalTo: helloWorldView.rightAnchor,constant: -4).isActive = true
        
        
    }
}
