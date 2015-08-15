//
//  drawr.swift
//  draw-app
//
//  Created by Archit Rathi on 8/14/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit

class drawr: UIView {
    
    var lines: [line] = [];
    var lastPoint :CGPoint!;
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var lapo = touches.first as? UITouch;
        lastPoint = lapo?.locationInView(self);
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        var nepo = touches.first as? UITouch;
        var newPoint = nepo?.locationInView(self);
        lines.append(line(start: lastPoint, end: newPoint!));
        lastPoint = newPoint;
        
        self.setNeedsDisplay();
    }
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext();
        CGContextBeginPath(context);
        for line in lines{
            CGContextMoveToPoint(context, line.start.x, line.start.y);
            CGContextAddLineToPoint(context, line.end.x, line.end.y);
        }
        CGContextSetRGBStrokeColor(context, 0, 0, 0, 1);
        CGContextSetLineCap(context, kCGLineCapRound);
        CGContextSetLineWidth(context, 5);
        CGContextStrokePath(context);
    }


}
