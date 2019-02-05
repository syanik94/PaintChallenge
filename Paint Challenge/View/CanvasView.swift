//
//  CanvasView.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 1/30/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit



class CanvasView: UIView {
    
    private var lineColor: UIColor! = .white
    private var lineWidth: CGFloat! = 8
    private var linePath: UIBezierPath!
    private var startingPoint: CGPoint!
    private var touchPoint: CGPoint!
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        initializeColor(color: lineColor)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startingPoint = touch?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        touchPoint = touch?.location(in: self)
        linePath = UIBezierPath()
        linePath.move(to: startingPoint)
        linePath.addLine(to: touchPoint)
        startingPoint = touchPoint
        drawLine()
    }
    
    func drawLine() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = linePath.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
    
    func clearDrawing() {
        linePath = UIBezierPath()
        if linePath.cgPath.isEmpty == true {
        linePath.removeAllPoints()
        self.layer.sublayers = nil
        }
    }
    
    func initializeColor(color: UIColor) {
        lineColor = color
    }
}














