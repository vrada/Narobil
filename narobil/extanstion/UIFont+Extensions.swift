//
//  UIFont+Extensions.swift
//  narobil
//
//  Created by Dharmendria on 03/02/20.
//  Copyright © 2020 Dharmendria. All rights reserved.
//

import UIKit

extension UIFont {
    
    static func regular(size: CGFloat = 64) -> UIFont? {
        return UIFont(name: "Rubik-Regular", size: size)
    }
    
    static func medium(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "Rubik-Medium", size: size)
    }
    
    static func black(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "Rubik-Black", size: size)
    }
    
    static func bold(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "Rubik-Bold", size: size)
    }
    
    static func titleBold(size: CGFloat = 18) -> UIFont? {
        return UIFont(name: "Rubik-Medium", size: size)
    }
}

