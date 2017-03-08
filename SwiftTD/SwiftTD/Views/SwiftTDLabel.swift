//
//  SwiftTDLabel.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 3/8/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import UIKit

class SwiftTDLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.textColor = FOREGROUND_COLOR
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
