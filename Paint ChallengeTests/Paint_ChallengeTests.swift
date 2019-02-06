//
//  Paint_ChallengeTests.swift
//  Paint ChallengeTests
//
//  Created by Yanik Simpson on 2/5/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import XCTest
@testable import Paint_Challenge

final class DrawingManagerTest: XCTestCase {
    let drawingManager = DrawingManager()
    let testView = CanvasView()
    
    private var currentPoint = CGPoint(x: 0.0, y: 0.0)
    private var newPoint = CGPoint(x: 2.0, y: 2.0)
    
    override func setUp() {
        drawingManager.clear(canvas: testView)
    }
    
    func testAddPoints() {
        drawingManager.addPoints(from: currentPoint, to: newPoint)
        
        XCTAssertTrue(drawingManager.linePath.contains(newPoint))
    }
    
    func testClear() {
        drawingManager.addPoints(from: currentPoint, to: newPoint)
        drawingManager.clear(canvas: testView)
        
        XCTAssertTrue(drawingManager.linePath.isEmpty)
    }
}




