//
//  SpecialButton.swift
//  SwiftIBDesignableDemo
//
//  Created by Raghavendra Dattawad on 9/22/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

//IBInspectable
//
//IBInspectable properties provide new access to an old feature: user-defined runtime attributes. Currently accessible from the identity inspector, these attributes have been available since before Interface Builder was integrated into Xcode. They provide a powerful mechanism for configuring any key-value coded property of an instance in a NIB, XIB, or storyboard:

//IBDesignable attribute will identify the UIView or the elements inherited from UIView — Eg: UIButton, UIImageView, UILabel etc..

//Border Color
//Border Width
//Corner Radius

import UIKit

@IBDesignable
///// By de declaring ib Designable above in interface builder i.e story barda the corner radius and values set automatically


class SpecialButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var cornerRadius:CGFloat = 0
{
didSet{
layer.cornerRadius = cornerRadius
layer.masksToBounds  = cornerRadius > 0
}
}
    @IBInspectable var borderdWidth:CGFloat = 0 {
        
        didSet {
            
            layer.borderWidth = borderdWidth
        }
        
        
    }
    
    @IBInspectable var borderdColor:UIColor = UIColor.black {
        
        didSet {
            
            layer.borderColor  = borderdColor.cgColor
        }
        
        
    }

    
}
