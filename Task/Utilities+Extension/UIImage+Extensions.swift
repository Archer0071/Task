//
//  UIImage+Extensions.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
import UIKit


extension UIImageView {
    func applyBlurEffect() {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = 0.4
        addSubview(blurEffectView)
    }
}
