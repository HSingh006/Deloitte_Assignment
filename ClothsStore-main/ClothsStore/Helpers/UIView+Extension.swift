//
//  UIView+Extension.swift
//  ClothsStore
//
//  Created by Zoombie on 07/04/22.
//

import Foundation
import UIKit

extension UIView {
    
    func dropShadow(scale: Bool = true, radius: CGFloat, opacity: Float, color: UIColor) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = radius

        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}


@IBDesignable class DesignableImageView: UIImageView {}
@IBDesignable class DesignableButton: UIButton{}
@IBDesignable class DesignableTextField: UITextField {}
@IBDesignable class DesignableLabel: UILabel {}


extension UIView {

    @IBInspectable

    var borderwidth: CGFloat {
        get {
            return layer.borderWidth
        }

        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable

    var borderColor: UIColor? {
        get {
            return layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!) : nil
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }

    @IBInspectable

    var cornerRadiusMe: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue != 0
        }
    }
}
