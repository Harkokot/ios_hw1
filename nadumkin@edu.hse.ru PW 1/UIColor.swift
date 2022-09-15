//
//  UIColor.swift
//  nadumkin@edu.hse.ru PW 1
//
//  Created by Никита Думкин on 15.09.2022.
//

import Foundation
import UIKit

extension UIColor{
    convenience init(hex: Int, alpha: CGFloat = 1.0) { // converting hex to CGFloat and initing rgba UIColor
        self.init(
            red: CGFloat((hex >> 16) & 0xFF) / 255.0,
            green: CGFloat((hex >> 8) & 0xFF) / 255.0,
            blue: CGFloat(hex & 0xFF) / 255.0,
            alpha: alpha
        );
    }
}
