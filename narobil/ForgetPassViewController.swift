//
//  ForgetPassViewController.swift
//  narobil
//
//  Created by Dharmendria on 03/02/20.
//  Copyright © 2020 Dharmendria. All rights reserved.
//

import UIKit
import SnapKit

class ForgetPassViewController: UIViewController {

    lazy var imageHead: UIImageView = {
        let imgHead = UIImageView(image: #imageLiteral(resourceName: "forget_pass"))
    
        view.addSubview(imgHead)
        return imgHead
    }()
    
    lazy var headLabel: UILabel = {
        let headLbl = UILabel()
        
        headLbl.text = "Masukkan Email"
        headLbl.textColor = .black
        headLbl.font = UIFont.medium()
        headLbl.numberOfLines = 0
        headLbl.lineBreakMode = .byWordWrapping
        
       view.addSubview(headLbl)
        return headLbl
    }()
    
    lazy var subHeadLabel: UILabel = {
        let subHeadLbl = UILabel()
        
        subHeadLbl.text = "Silahkan masukkan email kamu yang sudah terdaftar untuk di verifikasi"
        subHeadLbl.textColor = .black
        subHeadLbl.font = UIFont.regular()
        subHeadLbl.numberOfLines = 0
        subHeadLbl.lineBreakMode = .byWordWrapping
        subHeadLbl.textAlignment = .center
        
        view.addSubview(subHeadLbl)
        return subHeadLbl
    }()
    
    lazy var emailTextField: UITextField = {
        let emalTxtField = UITextField()
        
        emalTxtField.placeholder = "Nama email"
        emalTxtField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: emalTxtField.frame.height))
        emalTxtField.leftViewMode = .always
        emalTxtField.layer.backgroundColor = UIColor.colorTextField.cgColor
        emalTxtField.layer.borderColor = UIColor.colorTextField.cgColor
        emalTxtField.layer.cornerRadius = 6
        emalTxtField.layer.borderWidth = 1
        
        view.addSubview(emalTxtField)
        return emalTxtField
    }()
    
    lazy var kirimButton: UIButton = {
        let kirimBtn = UIButton()
        
        kirimBtn.setTitle("Kirim", for: .normal)
        kirimBtn.layer.backgroundColor = UIColor.colorPrimary.cgColor
        kirimBtn.layer.borderColor = UIColor.colorPrimary.cgColor
        kirimBtn.layer.cornerRadius = 6
        kirimBtn.layer.borderWidth = 1
        
        view.addSubview(kirimBtn)
        return kirimBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initForgetPass()
    }
}

extension ForgetPassViewController{
    private func initForgetPass(){
        
        imageHead.snp.makeConstraints { (maker) in
            if#available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(100)
            }else{
                maker.top.equalTo(self.view.snp.top).offset(100)
            }
            maker.leading.equalTo(self.view.snp.leading).offset(120)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-120)
            maker.width.equalTo(120)
            maker.height.equalTo(150)
        }
        
        headLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(imageHead.snp.bottom).offset(20)
            maker.leading.equalTo(self.view.snp.leading).offset(140)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-100)
            
        }
        
        subHeadLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(headLabel.snp.bottom).offset(5)
            maker.leading.equalTo(self.view.snp.leading).offset(40)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-40)
        }
        
        emailTextField.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(subHeadLabel.snp.bottom).offset(25)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        kirimButton.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            if#available(iOS 11.0, *){
                maker.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-15)
            }else{
                maker.bottom.equalTo(self.view.snp.bottom).offset(-15)
            }
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
    }
}
