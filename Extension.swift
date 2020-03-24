//
//  Extension.swift
//  Japanesia
//
//  Created by Dwikky Mardianto on 19/07/19.
//  Copyright © 2019 Dwikky Mardianto. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    
    static let pink = UIColor().colorHex("CC688D")
    static let sakuraPink = UIColor().colorHex("FF69A0")
    static let oceanBlue = UIColor().colorHex("3FB1CC")
    static let grass = UIColor().colorHex("37C757")
    static let oldGreen = UIColor().colorHex("37B341")
    static let golden = UIColor().colorHex("E8D376")
    static let burgundy = UIColor().colorHex("B33763")
    static let darkRed = UIColor().colorHex("A92C5D")
    
    func colorHex(_ hex : String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix ("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.white
        }
        
        var rgb : UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0 ,
                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(rgb & 0x0000FF) / 255.0,
                            alpha: 1.0)
    }
}

extension UIButton{
    
    func pulseButton() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.1
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 1
        pulse.initialVelocity = 0.1
        pulse.damping = 10.0
        
        layer.add(pulse, forKey: nil)
    }
}

