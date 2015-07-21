//
//  CountdownView.swift
//  PaintCode Control Demo
//
//  Created by Bill Morefield on 7/20/15.
//  Copyright (c) 2015 Bill Morefield. All rights reserved.
//

import UIKit

class CountdownView: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        CoutndownControl.drawCountdownControl(frame: rect, isRunning: false, remaining: 1.0, isWarning: false)
    }

}
