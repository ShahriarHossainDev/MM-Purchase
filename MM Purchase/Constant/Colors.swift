//
//  Colors.swift
//  MM Purchase
//
//  Created by Shishir_Mac on 2/4/23.
//

import Foundation
import UIKit

struct Colors{
    static let text_color_one:String = "#FFFFFF"
    static let text_color_two:String = "#D0DBE9"
    static let text_color_three:String = "#D4E5FA"
    static let text_color_four:String = "#778396"
    static let premium_button_turquoise:String = "#17D8F2"
    static let premium_button_tur:String = "#0B6EEB"
    static let primary_bg = "#031429"
    static let view_borderColor = "#D0DBE9"

}

extension String{
    func uiColor () -> UIColor {
        var cString:String = self.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}
