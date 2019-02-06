//
//  ColorPaletteCollectionViewCell.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 1/31/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit

class ColorPaletteCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var viewBackground: UIView!

    // MARK: - Helper Methods
    func configureCellColor(palette: ColorPalette) {
        self.viewBackground.backgroundColor = palette.color
    }
    
    func configureCellView() {
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 30
    }
}
