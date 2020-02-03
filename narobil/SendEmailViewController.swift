//
//  SendEmailViewController.swift
//  narobil
//
//  Created by Dharmendria on 03/02/20.
//  Copyright © 2020 Dharmendria. All rights reserved.
//

import UIKit
import SnapKit

class SendEmailViewController: UIViewController {

    lazy var headerImg: UIImageView = {
        let headerImg = UIImageView(image: #imageLiteral(resourceName: "kirim_email"))
       
        view.addSubview(headerImg)
        return headerImg
    }()
    
    lazy var headerLabel: UILabel = {
        let headerLbl = UILabel()
        headerLbl.text = "Terimakasih"
        headerLbl.textColor = .black
        headerLbl.font = UIFont.medium()
        headerLbl.textAlignment = .center
        headerLbl.numberOfLines = 0
        headerLbl.lineBreakMode = .byWordWrapping
       
        view.addSubview(headerLbl)
        return headerLbl
    }()
    
    lazy var bodyLabel: UILabel = {
        let bodyLbl = UILabel()
        bodyLbl.text = "Kami telah mengirim pesan ke email kamu. Silahkan verifikasi email yang sudah di daftarkan untuk membuat kata sandi"
        bodyLbl.textColor = .black
        bodyLbl.textAlignment = .center
        bodyLbl.font = UIFont.regular()
        bodyLbl.numberOfLines = 0
        bodyLbl.lineBreakMode = .byWordWrapping
        
        view.addSubview(bodyLbl)
        return bodyLbl
    }()
    
    lazy var footerBtn: UIButton = {
        let footerBtn = UIButton()
        footerBtn.setTitle("Kembali ke Halaman Awal", for: .normal)
        footerBtn.setTitleColor(UIColor.colorPrimary, for: .normal)
        
        view.addSubview(footerBtn)
        return footerBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initSendEmail()
    }
}

extension SendEmailViewController{
    private func initSendEmail(){
        headerImg.snp.makeConstraints { (maker) in
            if#available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(150)
            }else{
                maker.top.equalTo(self.view.snp.top).offset(150)
            }
            maker.leading.equalTo(self.view.snp.leading).offset(120)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-120)
            maker.height.equalTo(160)
            maker.width.equalTo(120)
        }
        
        headerLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(headerImg.snp.bottom).offset(20)
            maker.leading.equalTo(self.view.snp.leading).offset(128)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-128)
        }
        
        bodyLabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(headerLabel.snp.bottom).offset(5)
            maker.leading.equalTo(self.view.snp.leading).offset(43)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-43)
        }
        
        footerBtn.snp.makeConstraints { (maker) in
            maker.top.equalTo(bodyLabel.snp.bottom).offset(308)
            maker.leading.equalTo(self.view.snp.leading).offset(98)
            maker.trailing.equalTo(self.view.snp.trailing).offset(-98)
        }
    }
}
