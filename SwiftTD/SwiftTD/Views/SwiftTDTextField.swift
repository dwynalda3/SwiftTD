//
//  SwiftTDTextField.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 3/8/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import UIKit

class SwiftTDTextField: UITextField {

    override func awakeFromNib() {
        //self.fore
        super.awakeFromNib()
        self.backgroundColor = UIColor.clear
        self.textColor = FOREGROUND_COLOR
        self.layer.borderWidth = 1
        self.layer.borderColor = FOREGROUND_COLOR.cgColor
        self.layer.cornerRadius = 5.0
        
        guard let ph = self.placeholder else {
            return
        }
        
        self.attributedPlaceholder =
            NSAttributedString(string: ph, attributes: [NSForegroundColorAttributeName : FOREGROUND_COLOR])
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
