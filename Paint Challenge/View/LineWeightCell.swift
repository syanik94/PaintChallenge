//
//  LineWeightCell.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 1/31/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit

class LightWeightCell: UICollectionViewCell {
    
    
    
    
    
    
    
    
    
    // MARK: - Helper Methods
    
    func configureCellColor(data: [LineWeight], indexPath: IndexPath) {
        
//        self.viewBackground.backgroundColor = data[indexPath.row].color
    }
    
    func configureCellView() {
        
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 30
    }
    

    



    
    
    
}


