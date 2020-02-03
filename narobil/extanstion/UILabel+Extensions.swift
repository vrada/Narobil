//
//  UILabel+Extensions.swift
//  narobil
//
//  Created by Dharmendria on 03/02/20.
//  Copyright © 2020 Dharmendria. All rights reserved.
//

import UIKit

extension UILabel {
    
    enum LabelType {
        case h1_dark
        case body //Default
    }
    
    convenience init(kind: LabelType = .body) {
        self.init()
        
        switch kind {
        case .h1_dark:
            print("H1 Dark")
        case .body:
            print("Body")
        }
    }
}
