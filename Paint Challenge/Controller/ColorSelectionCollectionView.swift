//
//  ColorSelectionCollectionView.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 1/30/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit

extension PaintViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return colorSelection.count != 0 ? colorSelection.count : 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let defaultCell = UICollectionViewCell()
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReuseIdentifiers.colorPaletteCell.rawValue, for: indexPath) as? ColorPaletteCollectionViewCell else {
            return defaultCell
        }
        cell.configureCellColor(data: colorSelection, indexPath: indexPath)
        cell.configureCellView()
        return cell
    }
}

extension PaintViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        canvasView.initializeColor(color: colorSelection[indexPath.row].color)
        UIView.animate(withDuration: 0.25) {
            if let cell = collectionView.cellForItem(at: indexPath) as? ColorPaletteCollectionViewCell {
                cell.transform = .init(scaleX: 1.2, y: 1.2)
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.5) {
            if let cell = collectionView.cellForItem(at: indexPath) as? ColorPaletteCollectionViewCell {
                cell.transform = .identity
            }
        }
    }
}
