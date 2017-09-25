//
//  RoundedButton.swift
//  machine-learning-app
//
//  Created by Adrian horstmann on 25.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.75
        self.layer.cornerRadius = 5.0
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }

}
