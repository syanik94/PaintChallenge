//
//  Color View.swift
//  Paint Challenge
//
//  Created by Yanik Simpson on 1/30/19.
//  Copyright © 2019 Yanik Simpson. All rights reserved.
//

import UIKit

enum Color {
    case red
    case blue
    case green
    case purple
    case black
    case white
    case gray
}

struct ColorPalette {
    var colorName: Color
    var color: UIColor {
        switch colorName {
        case .gray:
            return UIColor.gray
        case .black:
            return UIColor.black
        case .blue:
            return UIColor.blue
        case .green:
            return UIColor.green
        case .white:
            return UIColor.white
        case .red:
            return UIColor.red
        default:
            return UIColor.white
        }
    }
    init(colorName: Color) {
        self.colorName = colorName
    }
}












