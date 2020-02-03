//
//  ConfrimAkunViewController.swift
//  narobil
//
//  Created by Dharmendria on 03/02/20.
//  Copyright © 2020 Dharmendria. All rights reserved.
//

import UIKit
import SnapKit

class ConfrimAkunViewController: UIViewController {

    lazy var imageLock: UIImageView = {
        let imgLock = UIImageView(image: #imageLiteral(resourceName: "lock"))
        
        view.addSubview(imgLock)
        return imgLock
    }()
    
    lazy var headerLabel: UILabel = {
        let headerLbl = UILabel(kind: .h1_dark)
        headerLbl.text = "Buat Kata Sandi kamu untuk masuk ke Narobil"
        headerLbl.textColor = .black
        headerLbl.font = UIFont.medium()
        headerLbl.numberOfLines = 0
        headerLbl.lineBreakMode = .byWordWrapping
        headerLbl.textAlignment = .center
        
        view.addSubview(headerLbl)
        return headerLbl
    }()
    
    lazy var katasandiLabel: UILabel = {
       let ktsandiLbl = UILabel()
        ktsandiLbl.text = "Kata Sandi"
        ktsandiLbl.textColor = .black
        ktsandiLbl.font = UIFont.medium()
        ktsandiLbl.numberOfLines = 0
        ktsandiLbl.lineBreakMode = .byWordWrapping
        
        view.addSubview(ktsandiLbl)
        return ktsandiLbl
    }()
    
    lazy var ktaSandiTextField: UITextField = {
        let ktSandiTxt = UITextField()
        ktSandiTxt.placeholder = "Masukkan kata sandi"
        ktSandiTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: ktSandiTxt.frame.height))
        ktSandiTxt.leftViewMode = .always
        ktSandiTxt.layer.backgroundColor = UIColor.colorTextField.cgColor
        ktSandiTxt.layer.cornerRadius = 6
        ktSandiTxt.layer.borderColor = UIColor.colorTextField.cgColor
        ktSandiTxt.layer.borderWidth = 1
        ktSandiTxt.isSecureTextEntry = true
        
        view.addSubview(ktSandiTxt)
        return ktSandiTxt
    }()
    
    lazy var konfrimLbl: UILabel = {
        let knfrmLbl = UILabel()
        knfrmLbl.text = "Konfirmasi Kata Sandi"
        knfrmLbl.textColor = .black
        knfrmLbl.font = UIFont.medium()
        knfrmLbl.numberOfLines = 0
        knfrmLbl.lineBreakMode = .byWordWrapping
        
        view.addSubview(knfrmLbl)
        return knfrmLbl
    }()
    
    lazy var konfrimTxt: UITextField = {
        let knfrmTxt = UITextField()
        knfrmTxt.placeholder = "Tulis ulang kata sandi"
        knfrmTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: knfrmTxt.frame.height))
        knfrmTxt.leftViewMode = .always
        knfrmTxt.layer.cornerRadius = 6
        knfrmTxt.layer.borderColor = UIColor.colorTextField.cgColor
        knfrmTxt.layer.backgroundColor = UIColor.colorTextField.cgColor
        knfrmTxt.layer.borderWidth = 1
        
        view.addSubview(knfrmTxt)
        return knfrmTxt
    }()
    
    lazy var selesaiBtn: UIButton = {
        let slsiBtn = UIButton()
        slsiBtn.setTitle("Selesai", for: .normal)
        slsiBtn.layer.backgroundColor = UIColor.colorPrimary.cgColor
        slsiBtn.layer.cornerRadius = 6
        slsiBtn.layer.borderWidth = 1
        slsiBtn.layer.borderColor = UIColor.colorPrimary.cgColor
        
        view.addSubview(slsiBtn)
        return slsiBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initConfrimAkun()
        // Do any additional setup after loading the view.
    }
}

extension ConfrimAkunViewController{
    private func initConfrimAkun(){
        imageLock.snp.makeConstraints { (maker) in
            if#available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(70)
            }else{
                maker.top.equalTo(self.view.snp.top).offset(70)
            }
            maker.leading.equalTo(self.view.snp.leading).offset(130)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-130)
            maker.width.equalTo(100)
            maker.height.equalTo(80)
        }
        
        headerLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(imageLock.snp.bottom).offset(12)
            maker.leading.equalTo(self.view.snp.leading).offset(71)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-71)
        }
        
        katasandiLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(headerLabel.snp.bottom).offset(40)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        ktaSandiTextField.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(katasandiLabel.snp.bottom).offset(8)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        konfrimLbl.snp.makeConstraints { (maker) in
            maker.top.equalTo(ktaSandiTextField.snp.bottom).offset(20)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        konfrimTxt.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(konfrimLbl.snp.bottom).offset(8)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
        
        selesaiBtn.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.top.equalTo(konfrimTxt.snp.bottom).offset(35)
            maker.leading.equalTo(self.view.snp.leading).offset(16)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-16)
        }
    }
    
}
