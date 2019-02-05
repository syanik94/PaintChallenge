//
//  ButtonUI.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 2/5/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit


extension UIButton {
    
    func configureClearButtonUI() {
        self.layer.cornerRadius = 10.0
        self.layer.shadowRadius = 0.0
    }
    
    
}


extension UICollectionView {
    
    func configureCollectionViewUI() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 5.0
        
        self.layer.cornerRadius = 10.0
        self.layer.masksToBounds = false

    }
}

