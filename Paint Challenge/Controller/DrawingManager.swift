//
//  DrawingManager.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 2/5/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit

final class DrawingManager {
    private(set) var linePath = UIBezierPath()
    
    func clear(canvas: CanvasView) {
        linePath.removeAllPoints()
        canvas.layer.sublayers = nil
    }
    
    func addPoints(from: CGPoint, to: CGPoint) {
        let newPath = UIBezierPath()
        
        newPath.move(to: from)
        newPath.addLine(to: to)
        
        linePath.append(newPath)
    }
}

