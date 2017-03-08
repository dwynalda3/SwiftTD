//
//  SwiftTDButton.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 3/8/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import UIKit

class SwiftTDButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = FOREGROUND_COLOR
        self.setTitleColor(BACKGROUND_COLOR, for: .normal)
        self.layer.cornerRadius = 5.0
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
