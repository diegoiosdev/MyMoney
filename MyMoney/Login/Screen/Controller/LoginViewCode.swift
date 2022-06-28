//
//  LoginViewCode.swift
//  MyMoney
//
//  Created by Diego Fernando on 26/06/22.

import UIKit
import SnapKit


class LoginViewCode: UIViewController {
    
    var loginScreen = LoginScreen()
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.loginScreen.delegate(delegate: self)
        self.loginScreen.configTextFieldDelegate(delegate: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

// MARK: - Settings extension

extension LoginViewCode: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

// MARK: - Settings Protocol

extension LoginViewCode: LoginScreenProtocol{
    func actionLoginButton() {
        print("Deu ok")
//        self.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
    }
    
    func actionRegisterButton() {
        let vc:RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}





