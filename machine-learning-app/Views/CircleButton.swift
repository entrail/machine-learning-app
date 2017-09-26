//
//  CircleImage.swift
//  machine-learning-app
//
//  Created by Adrian horstmann on 26.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {
    
    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.shadowRadius = 15
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }
    
}
