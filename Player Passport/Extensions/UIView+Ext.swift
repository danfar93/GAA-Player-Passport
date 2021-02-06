//
//  UIView+Ext.swift
//  Player Passport
//
//  Created by Daniel Farrell on 06/02/2021.
//

import Foundation
import UIKit

extension UIView {

    func roundedCorners(corners : UIRectCorner, radius : CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius,
                                                    height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }

}
