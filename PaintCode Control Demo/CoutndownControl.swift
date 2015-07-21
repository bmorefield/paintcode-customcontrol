//
//  CoutndownControl.swift
//  PaintCode Demo
//
//  Created by Bill Morefield on 7/20/15.
//  Copyright (c) 2015 Bill Morefield. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class CoutndownControl : NSObject {

    //// Drawing Methods

    public class func drawCountdownControl(#frame: CGRect, isRunning: Bool, remaining: CGFloat, isWarning: Bool) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let runningColor = UIColor(red: 0.000, green: 1.000, blue: 0.000, alpha: 1.000)
        let warningColor = UIColor(red: 1.000, green: 0.581, blue: 0.000, alpha: 1.000)
        let background = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let stoppedColor = UIColor(red: 0.856, green: 0.076, blue: 0.076, alpha: 1.000)

        //// Variable Declarations
        let isStopped = !isRunning
        let progressDegree: CGFloat = 360 * remaining
        let progressColor = isWarning ? warningColor : runningColor

        //// Running Indicator Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, frame.minX + 0.50000 * frame.width, frame.minY + 0.50000 * frame.height)
        CGContextRotateCTM(context, -90 * CGFloat(M_PI) / 180)

        var runningIndicatorRect = CGRectMake(-35, -35, 70, 70)
        var runningIndicatorPath = UIBezierPath()
        runningIndicatorPath.addArcWithCenter(CGPointMake(runningIndicatorRect.midX, runningIndicatorRect.midY), radius: runningIndicatorRect.width / 2, startAngle: -progressDegree * CGFloat(M_PI)/180, endAngle: 0 * CGFloat(M_PI)/180, clockwise: true)
        runningIndicatorPath.addLineToPoint(CGPointMake(runningIndicatorRect.midX, runningIndicatorRect.midY))
        runningIndicatorPath.closePath()

        progressColor.setFill()
        runningIndicatorPath.fill()

        CGContextRestoreGState(context)


        //// Blank Drawing
        var blankPath = UIBezierPath(ovalInRect: CGRectMake(frame.minX + floor(frame.width * 0.25000 + 0.5), frame.minY + floor(frame.height * 0.25000 + 0.5), floor(frame.width * 0.75000 + 0.5) - floor(frame.width * 0.25000 + 0.5), floor(frame.height * 0.75000 + 0.5) - floor(frame.height * 0.25000 + 0.5)))
        background.setFill()
        blankPath.fill()


        if (isStopped) {
            //// StartButton Drawing
            CGContextSaveGState(context)
            CGContextTranslateCTM(context, frame.minX + 0.50000 * frame.width, frame.minY + 0.50000 * frame.height)
            CGContextRotateCTM(context, 90 * CGFloat(M_PI) / 180)

            var startButtonPath = UIBezierPath()
            startButtonPath.moveToPoint(CGPointMake(0, -16))
            startButtonPath.addLineToPoint(CGPointMake(13.86, 8))
            startButtonPath.addLineToPoint(CGPointMake(-13.86, 8))
            startButtonPath.closePath()
            runningColor.setFill()
            startButtonPath.fill()

            CGContextRestoreGState(context)
        }


        if (isRunning) {
            //// StopButton Drawing
            let stopButtonPath = UIBezierPath(rect: CGRectMake(frame.minX + floor(frame.width * 0.36000 + 0.5), frame.minY + floor(frame.height * 0.36000 + 0.5), floor(frame.width * 0.64000 + 0.5) - floor(frame.width * 0.36000 + 0.5), floor(frame.height * 0.64000 + 0.5) - floor(frame.height * 0.36000 + 0.5)))
            stoppedColor.setFill()
            stopButtonPath.fill()
        }
    }

}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}
