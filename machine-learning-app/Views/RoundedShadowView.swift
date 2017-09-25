//
//  RoundedShadowView.swift
//  machine-learning-app
//
//  Created by Adrian horstmann on 25.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedShadowView: UIView {
    
    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.75
        self.layer.cornerRadius = self.frame.height / 2
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }
}
