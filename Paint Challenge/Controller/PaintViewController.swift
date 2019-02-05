//
//  ViewController.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 1/30/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit

class PaintViewController: UIViewController {
    
    enum ReuseIdentifiers: String {
        case colorPaletteCell = "colorViewCell"
    }
    
    // MARK: - Declarations
    var colorSelection: [ColorPalette] = []
    
    // MARK: - Outlets
    @IBOutlet weak var canvasView: CanvasView!
    @IBOutlet weak var stencilCollectionView: UICollectionView!
    @IBOutlet weak var clearButton: UIButton!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        stencilCollectionView.dataSource = self
        stencilCollectionView.delegate = self

        // Load View
        canvasView.configureCanvasUI()
        clearButton.configureClearButtonUI()
        stencilCollectionView.configureCollectionViewUI()
        
        // Load Data
        initializeVariables()
        
        super.viewDidLoad()
    }
    
    // MARK: - Helper Methods
    func initializeVariables() {
        let red = ColorPalette(colorName: .red)
        let green = ColorPalette(colorName: .green)
        let blue = ColorPalette(colorName: .blue)
        let black = ColorPalette(colorName: .black)
        let white = ColorPalette(colorName: .white)
        let gray = ColorPalette(colorName: .gray)
        self.colorSelection = [
            white,
            green,
            blue,
            black,
            red,
            gray
        ]
    }
    
    @IBAction func clearTapped(_ sender: Any) {
        canvasView.clearDrawing()
    }
    
}

