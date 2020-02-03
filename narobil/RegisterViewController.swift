//
//  RegisterViewController.swift
//  narobil
//
//  Created by Dharmendria on 03/02/20.
//  Copyright © 2020 Dharmendria. All rights reserved.
//

import UIKit
import SnapKit

class RegisterViewController: UIViewController {

    lazy var titleHeader: UILabel = {
        let titleHead = UILabel(kind: .h1_dark)
        titleHead.text = "Lengkapi data diri kamu untuk mendaftar di Narobil"
        titleHead.textColor = .black
        titleHead.font = UIFont.titleBold()
        titleHead.numberOfLines = 0
        titleHead.lineBreakMode = .byWordWrapping
        
        view.addSubview(titleHead)
        return titleHead
    }()
    
    lazy var akunLabel: UILabel = {
        let akunLbl = UILabel()
        akunLbl.text = "Nama Akun"
        akunLbl.textColor = .black
        akunLbl.font = UIFont.medium()
        akunLbl.numberOfLines = 0
        akunLbl.lineBreakMode = .byWordWrapping
       
        view.addSubview(akunLbl)
        return akunLbl
    }()
    
    lazy var akunTextField: UITextField = {
        let akunTextField = UITextField()
        akunTextField.placeholder = "Tulis Nama"
        akunTextField.layer.cornerRadius = 6
        akunTextField.layer.backgroundColor = UIColor.colorTextField.cgColor
        akunTextField.layer.borderColor = UIColor.colorTextField.cgColor
        akunTextField.layer.borderWidth = 1
        akunTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: akunTextField.frame.height))
        akunTextField.leftViewMode = .always
       
        view.addSubview(akunTextField)
        return akunTextField
    }()
    
    lazy var emailLabel: UILabel = {
       let emailLbl = UILabel()
        emailLbl.text = "Email"
        emailLbl.textColor = .black
        emailLbl.font = UIFont.medium()
        emailLbl.numberOfLines = 0
        emailLbl.lineBreakMode = .byWordWrapping
        
        view.addSubview(emailLbl)
        return emailLbl
    }()
    
    lazy var emailTextField: UITextField = {
        let emailTxtField = UITextField()
        emailTxtField.placeholder = "Masukan Email"
        emailTxtField.layer.cornerRadius = 6
        emailTxtField.layer.backgroundColor = UIColor.colorTextField.cgColor
        emailTxtField.layer.borderColor = UIColor.colorTextField.cgColor
        emailTxtField.layer.borderWidth = 1
        emailTxtField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: emailTxtField.frame.height))
        emailTxtField.leftViewMode = .always
    
        view.addSubview(emailTxtField)
        return emailTxtField
    }()
    
    lazy var notlpLabel: UILabel = {
        let notlpLbl = UILabel()
        notlpLbl.text = "No. Telepon"
        notlpLbl.textColor = .black
        notlpLbl.font = UIFont.medium()
        notlpLbl.numberOfLines = 0
        notlpLbl.lineBreakMode = .byWordWrapping
        
        view.addSubview(notlpLbl)
        return notlpLbl
    }()
    
    lazy var notlpTextField: UITextField = {
       let notlpTxtField = UITextField()
        notlpTxtField.placeholder = "081234567890"
        notlpTxtField.layer.cornerRadius = 6
        notlpTxtField.layer.backgroundColor = UIColor.colorTextField.cgColor
        notlpTxtField.layer.borderColor = UIColor.colorTextField.cgColor
        notlpTxtField.layer.borderWidth = 1
        notlpTxtField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: notlpTxtField.frame.height))
        notlpTxtField.leftViewMode = .always
        
        view.addSubview(notlpTxtField)
        return notlpTxtField
    }()
    
    lazy var daftarButton: UIButton = {
       let daftarBtn = UIButton()
        daftarBtn.setTitle("Daftar", for: .normal)
        daftarBtn.layer.backgroundColor = UIColor.colorPrimary.cgColor
        daftarBtn.layer.borderColor = UIColor.colorPrimary.cgColor
        daftarBtn.layer.borderWidth = 1
        daftarBtn.layer.cornerRadius = 6
        
        view.addSubview(daftarBtn)
        return daftarBtn
    }()
    
    lazy var sdhPnyAknLbl: UILabel = {
        let sdhPnyAknLbl = UILabel()
        sdhPnyAknLbl.text = "Kamu udah punya akun?"
        sdhPnyAknLbl.textColor = .black
        sdhPnyAknLbl.font = UIFont.regular()
        sdhPnyAknLbl.numberOfLines = 0
        sdhPnyAknLbl.lineBreakMode = .byWordWrapping
        
        view.addSubview(sdhPnyAknLbl)
        return sdhPnyAknLbl
    }()
    
    lazy var masukBtn: UIButton = {
        let mskBtn = UIButton()
        mskBtn.setTitle("Masuk", for: .normal)
        mskBtn.setTitleColor(UIColor.colorPrimary, for: .normal)
        
        view.addSubview(mskBtn)
        return mskBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initRegisView()
    }
}

extension RegisterViewController{
    private func initRegisView(){
        titleHeader.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *) {
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            } else {
                // Fallback on earlier versions
                maker.top.equalTo(self.view.snp.top).offset(16)
            }
            
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-46)
        }
        
        akunLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(titleHeader.snp.bottom).offset(30)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-278)
        }
        
        akunTextField.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(akunLabel.snp.bottom).offset(8)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        emailLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(akunTextField.snp.bottom).offset(20)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        emailTextField.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(emailLabel.snp.bottom).offset(8)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        notlpLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(emailTextField.snp.bottom).offset(20)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        notlpTextField.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(notlpLabel.snp.bottom).offset(8)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        daftarButton.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(notlpTextField.snp.bottom).offset(35)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        sdhPnyAknLbl.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-30)
            }else{
                maker.bottom.equalTo(self.view.snp.bottom).offset(-30)
            }
            maker.leading.equalTo(self.view.snp.leading).offset(76)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-125)
        }
        
        masukBtn.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-24)
            }else{
                maker.bottom.equalTo(self.view.snp.bottom).offset(-24)
            }
            maker.leading.equalTo(self.view.snp.leading).offset(250)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-76)
        }
    }
}
