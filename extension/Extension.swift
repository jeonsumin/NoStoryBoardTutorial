//
//  Extension.swift
//  tutorial
//
//  Created by Terry on 2021/10/31.
//

import UIKit

extension UIViewController {
    @objc func dismissKeyboard (){
        view.endEditing(true)
    }
    func hiddenKeyboardWhenTappedAround(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false 
        view.addGestureRecognizer(tap)
    }
}
