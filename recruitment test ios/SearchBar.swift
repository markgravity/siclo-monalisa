//
//  SearchBar.swift
//  Siclo app
//
//  Created by Mark G on 6/22/17.
//  Copyright © 2017 Siclo. All rights reserved.
//

import UIKit

@IBDesignable
class SearchBar: UISearchBar {
    @IBInspectable
    var textFieldBackgroundColor : UIColor?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        self.setupView()
    }
    
    func setupView(){
        // Only change textfield inside UISearchBar when it's not nil
        // (ex: setting on Interface Builder)
        if textFieldBackgroundColor != nil {
            for subView in (subviews.first?.subviews)! {
                if subView is UITextField {
                    let textField = subView as! UITextField
                    
                    switch searchBarStyle {
                    case .minimal:
                        textField.layer.backgroundColor = textFieldBackgroundColor?.cgColor
                        textField.layer.cornerRadius = 6
                        
                    case .prominent, .default:
                        textField.backgroundColor = textFieldBackgroundColor
                    }
                }
            }
        }
        
    }
}
