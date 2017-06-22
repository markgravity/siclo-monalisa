//
//  ImageView.swift
//  milk-tea-management
//
//  Created by Mark G on 5/8/17.
//  Copyright © 2017 Smartnet. All rights reserved.
//

import UIKit
@IBDesignable

class ImageView: UIImageView {
    
    @IBInspectable
    public var cornerRadius:CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
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
