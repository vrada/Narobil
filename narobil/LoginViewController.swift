//
//  LoginViewController.swift
//  narobil
//
//  Created by Dharmendria on 02/02/20.
//  Copyright © 2020 Dharmendria. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel(kind: .h1_dark)
        titleLabel.text = "Masukkan akun Narobil kamu yang sudah terdaftar"
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.font = UIFont.titleBold()
        //        titleLabel.font = .boldSystemFont(ofSize: 16)
        
        view.addSubview(titleLabel)
        return titleLabel
    }()
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Akun Narobil"
        label.textColor = .black
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.medium()
        //        label.font = .boldSystemFont(ofSize: 16)
        
        view.addSubview(label)
        return label
    }()
    
    lazy var usernameTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.colorTextField.cgColor
        textField.layer.backgroundColor = UIColor.colorTextField.cgColor
        textField.layer.cornerRadius = 6
        textField.placeholder = "Nama Akun"
        textField.font = UIFont.regular()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textField.frame.height))
        textField.leftViewMode = .always
        
        view.addSubview(textField)
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let passwordLabel = UILabel()
        passwordLabel.text = "Kata Sandi"
        passwordLabel.textColor = .black
        passwordLabel.numberOfLines = 0
        passwordLabel.lineBreakMode = .byWordWrapping
        passwordLabel.font = UIFont.medium()
        //        passwordLabel.font = .boldSystemFont(ofSize: 16)
        
        view.addSubview(passwordLabel)
        return passwordLabel
    }()
    
    lazy var passwordTextField: UITextField = {
        let passTextField = UITextField()
        passTextField.layer.borderWidth = 1
        passTextField.layer.borderColor = UIColor.colorTextField.cgColor
        passTextField.layer.backgroundColor = UIColor.colorTextField.cgColor
        passTextField.layer.cornerRadius = 6
        passTextField.placeholder = "Masukan Kata Sandi"
        passTextField.font = UIFont.regular()
        passTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: passTextField.frame.height))
        passTextField.leftViewMode = .always
        
        view.addSubview(passTextField)
        return passTextField
    }()
    
    lazy var masukButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Masuk", for: .normal)
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.colorPrimary.cgColor
        loginButton.layer.backgroundColor = UIColor.colorPrimary.cgColor
        loginButton.layer.cornerRadius = 6
        
        view.addSubview(loginButton)
        return loginButton
    }()
    
    lazy var footerLabel: UILabel = {
        let footerLabel = UILabel()
        footerLabel.text = "Kamu belum punya akun?"
        footerLabel.textColor = .black
        footerLabel.numberOfLines = 0
        footerLabel.lineBreakMode = .byWordWrapping
        footerLabel.font = UIFont.regular()
        
        view.addSubview(footerLabel)
        return footerLabel
    }()
    
    lazy var footerRegLabel: UILabel = {
        let footReg = UILabel()
        footReg.text = "Daftar disini"
        footReg.textColor = UIColor.colorPrimary
        footReg.font = UIFont.medium()
        footReg.numberOfLines = 0
        footReg.lineBreakMode = .byWordWrapping
        
        view.addSubview(footReg)
        return footReg
    }()
    
    lazy var forgetPass: UILabel = {
        let lupaPass = UILabel()
        lupaPass.text = "Lupa Kata Sandi"
        lupaPass.textColor = UIColor.colorForgetPass
        lupaPass.font = UIFont.regular()
        lupaPass.numberOfLines = 0
        lupaPass.lineBreakMode = .byWordWrapping
        
        view.addSubview(lupaPass)
        return lupaPass
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initView()
        // Do any additional setup after loading the view.
    }
}

extension LoginViewController{
    private func initView(){
        titleLabel.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *) {
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            } else {
                // Fallback on earlier versions
                maker.top.equalTo(self.view.snp.top).offset(16)
            }
            
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-46)
        }
        
        usernameLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(titleLabel.snp.bottom).offset(32)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        usernameTextField.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(usernameLabel.snp.bottom).offset(8)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        passwordLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(usernameTextField.snp.bottom).offset(20)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        passwordTextField.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(passwordLabel.snp.bottom).offset(8)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        masukButton.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(passwordTextField.snp.bottom).offset(35)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        footerLabel.snp.makeConstraints { (maker) in
            //            maker.width.equalTo(166)
            maker.bottom.equalTo(self.view.snp.bottom).offset(-59)
            maker.leading.equalTo(self.view.snp.leading).offset(53)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-141)
        }
        
        footerRegLabel.snp.makeConstraints { (maker) in
            maker.width.equalTo(83)
            maker.bottom.equalTo(self.view.snp.bottom).offset(-59)
            maker.leading.equalTo(self.view.snp.leading).offset(252)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-52)
        }
        
        forgetPass.snp.makeConstraints { (maker) in
            maker.top.equalTo(footerLabel.snp.bottom).offset(14)
            maker.leading.equalTo(self.view.snp.leading).offset(150)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-110)
        }
    }
}
