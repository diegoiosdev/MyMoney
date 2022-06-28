//
//  RegisterViewController.swift
//  MyMoney
//
//  Created by Diego Fernando on 27/06/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
    }
}


// MARK: - Settings Extension


extension RegisterViewController:UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension RegisterViewController:RegisterScreenProtocol{
    
    func actionBackButton() {
        print("Back button!!")
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        print("Register  button!!")
    }
    
    
}
