//
//  UIColorExtensions.swift
//  colorscheme
//
//  Created by Guy Umbright on 4/7/15.
//  Copyright (c) 2015 Umbright Consulting, Inc. All rights reserved.
//

import UIKit

public extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    
    func withAlpha(_ newAlpha : CGFloat) -> UIColor
    {
        var red : CGFloat = 0, green : CGFloat = 0, blue : CGFloat = 0, alpha : CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return UIColor(red: red, green: green, blue: blue, alpha: newAlpha)
    }
}
//Usage:

//var color = UIColor(red: 0xFF, blue: 0xFF, green: 0xFF)
//var color2 = UIColor(netHex:0xFFFFFF)
