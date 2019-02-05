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
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 5.0
    }
}

extension UICollectionView {
    func configureCollectionViewUI() {
        self.layer.cornerRadius = 15.0
    }
}

extension CanvasView {
    func configureCanvasUI() {
        self.layer.cornerRadius = 20
        self.backgroundColor = UIColor.lightGray
    }
}
