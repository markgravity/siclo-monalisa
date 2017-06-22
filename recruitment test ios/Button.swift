//
//  Button.swift
//  milk-tea-management
//
//  Created by Mark G on 5/9/17.
//  Copyright © 2017 Smartnet. All rights reserved.
//

import UIKit
@IBDesignable

class Button: UIButton {

    @IBInspectable
    public var cornerRadius:CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
    
    @IBInspectable
    public var borderWidth:CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable
    public var borderColor:UIColor?{
        didSet {
            self.layer.borderColor = self.borderColor?.cgColor
        }
    }

    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
